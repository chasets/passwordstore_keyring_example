# passwordstore_keyring_example
Example setup of passwordstore, including keyring backend

## initial notes from various places

### install pass
git clone https://git.zx2c4.com/password-store
make install

### keyring setup
After artifactory is set, run 
```
pip install keyring
pip install keyring-pass
```

```
>$ cat ~/.config/python_keyring/keyringrc.cfg
[backend]
default-keyring = keyring_pass.PasswordStoreBackend

[pass]
key-prefix=.
binary=/usr/bin/pass
```

### resources
https://www.passwordstore.org/
https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1
https://pypi.org/project/keyring-pass/

https://github.com/chasets/devcontainer -- private
