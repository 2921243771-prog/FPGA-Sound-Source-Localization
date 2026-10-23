"""Collect the local development files and Vivado/SDK source project.

Usage: python scripts/export_snapshot.py WORKSPACE VIVADO_PROJECT_DIR OUTPUT_REPO
Original files are never modified. Existing output files may be refreshed.
"""
import argparse
import datetime
import hashlib
import json
import shutil
from pathlib import Path
import xml.etree.ElementTree as ET

SKIP_DIRS = {'.git', '.Xil', 'xsim.dir', '__pycache__', '.metadata', '.sdk',
             'Debug', 'Release', 'RemoteSystemsTempFiles', 'webtalk'}
SKIP_EXTS = {'.log', '.jou', '.pb', '.wdb', '.dcp', '.o', '.a', '.exe',
             '.dll', '.so', '.str', '.pyc', '.zip', '.d'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('workspace', type=Path)
    parser.add_argument('project', type=Path)
    parser.add_argument('output', type=Path)
    args = parser.parse_args()
    workspace, project, output = [p.resolve() for p in
                                  (args.workspace, args.project, args.output)]
    if output == workspace or output == project:
        raise SystemExit('Output must be a separate directory.')
    output.mkdir(parents=True, exist_ok=True)
    records = []
    skipped = []

    def copy_file(src, dst, group):
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        records.append({'path': dst.relative_to(output).as_posix(),
                        'group': group, 'bytes': src.stat().st_size,
                        'source_modified_utc': datetime.datetime.fromtimestamp(
                            src.stat().st_mtime, datetime.timezone.utc).isoformat(),
                        'sha256': hashlib.sha256(src.read_bytes()).hexdigest()})

    def copy_tree(src, dst, group):
        for item in sorted(src.rglob('*')):
            if not item.is_file():
                continue
            rel = item.relative_to(src)
            if (any(part in SKIP_DIRS for part in rel.parts)
                    or item.suffix.lower() in SKIP_EXTS):
                skipped.append({'group': group, 'path': rel.as_posix()})
                continue
            copy_file(item, dst / rel, group)

    for name in ('fft_store', 'gcc_phat', 'i2s_fix', 'lag_to_ps',
                 'phat_ifft', 'ps_localization'):
        copy_tree(workspace / name, output / name, 'development')
    for name in ('tdoa_xcorr.m', 'tb_I2C_clock.sv', 'tmp-key-schematic.png'):
        if (workspace / name).is_file():
            copy_file(workspace / name, output / name, 'development')

    vivado_out = output / 'vivado'
    copy_tree(project / 'heelo_world.srcs', vivado_out / 'heelo_world.srcs',
              'vivado_sources')
    copy_tree(project / 'heelo_world.sdk', output / 'sdk', 'sdk_sources')
    xpr_source = project / 'heelo_world.xpr'
    xpr_dest = vivado_out / xpr_source.name
    copy_file(xpr_source, xpr_dest, 'vivado_project')
    text = xpr_source.read_text(encoding='utf-8')
    tree = ET.fromstring(text)
    external_files = []
    for node in tree.findall('.//File'):
        original = node.attrib.get('Path', '')
        if original.startswith('$') or not Path(original).is_absolute():
            continue
        src = Path(original)
        if not src.is_file():
            raise SystemExit(f'Missing external project source: {src.name}')
        dst = vivado_out / 'heelo_world.srcs/sources_1/imports' / src.name
        if dst.exists() and dst.read_bytes() != src.read_bytes():
            raise SystemExit(f'Conflicting imported source: {src.name}')
        copy_file(src, dst, 'external_rtl')
        portable = '$PSRCDIR/sources_1/imports/' + src.name
        text = text.replace(f'Path="{original}"', f'Path="{portable}"')
        external_files.append({'file': src.name, 'project_path': portable})
    # Project's old absolute location is informational; make the snapshot local.
    text = text.replace(tree.attrib['Path'], 'heelo_world.xpr')
    xpr_dest.write_text(text, encoding='utf-8', newline='\n')
    for record in records:
        if record['path'] == 'vivado/heelo_world.xpr':
            record['sha256'] = hashlib.sha256(xpr_dest.read_bytes()).hexdigest()
            record['bytes'] = xpr_dest.stat().st_size

    for name in ('core_wrapper.bit', 'core_wrapper.ltx'):
        src = project / 'heelo_world.runs/impl_1' / name
        if src.is_file():
            copy_file(src, output / 'artifacts/implemented' / name,
                      'implemented_snapshot')
    debug_root = project / 'heelo_world.hw'
    if debug_root.is_dir():
        for src in sorted(debug_root.rglob('*')):
            if src.is_file():
                copy_file(src, output / 'artifacts/hardware_debug' /
                          src.relative_to(debug_root), 'hardware_debug_snapshot')
    manifest = {
        'exported_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'notes': [
            'Source snapshot; original local projects were not modified.',
            'Vivado XPR external RTL references were copied inside its source tree.',
            'SDK hardware exports and bitstreams preserve their individual timestamps; '
            'do not assume they were all generated from the same source revision.',
            'Build caches, IDE workspace state, logs, native libraries and checkpoints '
            'are omitted. Regenerate with Vivado/SDK 2018.3.',
            'gcc_phat and backups preserve historical experiments, not the active pipeline.'
        ],
        'external_rtl_imports': external_files,
        'files': records,
        'excluded_generated_files': skipped,
    }
    (output / 'snapshot_manifest.json').write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'copied_files': len(records),
                      'total_bytes': sum(r['bytes'] for r in records),
                      'external_rtl_files': len(external_files),
                      'excluded_files': len(skipped)}))


if __name__ == '__main__':
    main()
