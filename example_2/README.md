## Python Keyring

1. Keyring integrates with MacOS Keychain on Mac and with Windows Credential Locker on Windows
2. By default, requires a desktop on Linux such as GNOME or KDE

## Using pass as a keyring backend substantially simplifies using keyring on Linux
* https://pypi.org/project/keyring-pass/


## Example

1. Build docker -- note addition of python and pass
`docker build -t step_2 .`
`docker run -it step_2`

2. Install keyring
`pip install keyring`
`pip install keyring-pass`
`echo -n "\nexport PATH=/home/app/.local/bin:$PATH\n" >> ~/.zshrc`
`exec $0`

3. Set up pass in this container
`gpg --full-gen-key`
`pass init <key_you_just_created>`
`pass insert test1`
`pass insert -m test1`
`pass`

3. Configure keyring to use pass 
`mkdir -p ~/.config/python_keyring/`
```sh
cat << EOF > ~/.config/python_keyring/keyringrc.cfg
[backend]
default-keyring = keyring_pass.PasswordStoreBackend

[pass]
key-prefix=.
binary=/usr/bin/pass
EOF
```

4. Use keyring
`keyring set prod-aurora svc1`
`pass`
`keyring get prod-aurora svc1`
`pass prod-aurora/svc1`
`ls -ltr ~/.password-store`
`export MY_PASS=$(keyring get prod-aurora svc1)`




