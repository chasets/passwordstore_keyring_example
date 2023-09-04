## Goals

1. Don't store secrets in plain text anywhere

2. Don't print out secrets

## pass - the standard unix password manager
* simple
* shell scripts around gpg
* secrets are stored in gpg files
* easy to use both interactively and from scripts

## resources
* https://www.passwordstore.org/
* https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1

## installation

### Mac

`brew install pass`

### Debian

`apt-get install pass`

## Example

1. Build docker
`docker build -t step_1 .`
`docker run -it step_1`

2. Install pass
`sudo apt-get install pass`

3. Set up pass
`gpg --full-gen-key`
`pass init <key_you_just_created>`

4. Use pass
`pass insert test1`
`pass insert -m test1`
`pass`
`pass test1`
`pass -c test1  # expect this to fail`
`ls -ltr ~/.password-store`
`gpg --decrypt ~/.password-store/test1.gpg`
`gpg --decrypt ~/.password-store/test1.gpg 2>/dev/null`
`export MY_PASS=$(pass test1)`



