#!/usr/bin/env python3
import gnupg
import sys

data = ''.join(sys.argv[1:])
if len(data) == 0:
	print('Usage: salt-gpg <SECRET>')
	sys.exit(1)

gpg = gnupg.GPG(gnupghome='/etc/salt/gpgkeys')

keys = gpg.list_keys()
if len(keys) != 1:
	print(f'Found an incorrenct amount of keys ({len(keys)}), there should only be one.')
	sys.exit(1)

# encrypt data using the key as the recipient and dump it
print(gpg.encrypt(data, keys[0]['fingerprint']))
