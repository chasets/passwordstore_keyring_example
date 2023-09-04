# password-store examples, including keyring

## Motivation
When we keep secrets (database passwords, cloud credentials, etc.) on local computers, there is a possibility of accidentially leaking those to code repositories or other locations. For many years, I have used [Python keyring](https://pypi.org/project/keyring/), which is great. `keyring` integrates well with the default credential stores on MacOS and Windows. However, it has dependencies in Linux that make it difficult to use, expecially in docker. Recently, I adopted [pass](https://www.passwordstore.org/) for all environments. Although it doesn't integrate with the desktop credential stores, it works consistently across all platforms (using WSL for Windows), including within docker containers. 

## Examples in this repo
### Generally
As mentioned above, [pass](https://www.passwordstore.org/) works well in docker containers. In order to facilitate reproducibility of these examples, I'll use a basic docker setup, which is detailed as part of [example_1](./example_1/).

### [example_1](./example_1/)

### [example_2](./example_2/) - 

### [example_3](./example_3/) - 

### [example_4](./example_4/) - 


