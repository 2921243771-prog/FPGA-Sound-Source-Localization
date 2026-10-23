"""Check snapshot hashes, project source paths, size limits and obvious secrets."""
import hashlib
import json
from pathlib import Path
import re
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parents[1]
manifest = json.loads((root / 'snapshot_manifest.json').read_text(encoding='utf-8'))
failures = []
for record in manifest['files']:
    file = root / record['path']
    if not file.is_file():
        failures.append('Missing snapshot file: ' + record['path'])
    elif hashlib.sha256(file.read_bytes()).hexdigest() != record['sha256']:
        failures.append('Hash mismatch: ' + record['path'])

xpr = root / 'vivado/heelo_world.xpr'
project = ET.parse(xpr).getroot()
variables = {'$PSRCDIR': str(xpr.parent / 'heelo_world.srcs'),
             '$PPRDIR': str(xpr.parent)}
source_count = 0
for node in project.findall('.//File'):
    name = node.attrib['Path']
    for key, value in variables.items():
        name = name.replace(key, value)
    path = Path(name)
    if not path.is_absolute():
        path = xpr.parent / path
    if not path.is_file():
        failures.append('Unresolved XPR source: ' + node.attrib['Path'])
    source_count += 1

# Report only the file and rule, never a matched credential value.
patterns = {
    'private key': re.compile(rb'-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----'),
    'GitHub token': re.compile(rb'\b(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{40,})\b'),
    'AWS access key': re.compile(rb'\bAKIA[0-9A-Z]{16}\b'),
    'credential URL': re.compile(rb'https?://[^\s/:<>]{2,}:[^\s/@<>]{4,}@'),
}
count = 0
size = 0
for file in root.rglob('*'):
    if not file.is_file() or '.git' in file.relative_to(root).parts:
        continue
    relative = file.relative_to(root).as_posix()
    data = file.read_bytes()
    count += 1
    size += len(data)
    if len(data) >= 100 * 1024 * 1024:
        failures.append('GitHub 100 MiB file limit: ' + relative)
    if file.name in {'.env', 'id_rsa', 'id_ed25519', '.git-credentials'}:
        failures.append('Credential filename: ' + relative)
    # Text only: binary exports cannot contain source credentials by construction.
    if b'\x00' in data[:8192]:
        continue
    for rule, pattern in patterns.items():
        if pattern.search(data):
            failures.append('Possible ' + rule + ': ' + relative)

print(json.dumps({'files': count, 'bytes': size,
                  'manifest_files': len(manifest['files']),
                  'resolved_project_sources': source_count,
                  'failures': failures}, ensure_ascii=False, indent=2))
raise SystemExit(bool(failures))
