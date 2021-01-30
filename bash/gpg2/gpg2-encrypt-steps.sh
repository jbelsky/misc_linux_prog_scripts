#!/bin/bash

# Ensure $HOME .gnupg directory is removed
if [ -d ${HOME}/.gnupg ]; then
	rm -r ${HOME}/.gnupg
fi

# Initialize the configuration for gpg2
# Note: USERID will be "NAME <EMAIL>"
# Note: Remember the passphrase!
gpg2 --gen-key

# Encrypt the file, generates $FILE.gpg
FILE="/path/to/file"
USERID="NAME <EMAIL>"
gpg2 -e -r $USERID $FILE

# Once $FILE.gpg file is created, can remove $FILE

# Decrypt the file
gpg2 -d -o ${FILE}.decrypted ${FILE}.gpg
