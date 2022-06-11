# Bats tools in a docker image

Images available, see registry: [ghcr.io/vincent-herlemont/bats-tools](https://github.com/users/vincent-herlemont/packages/container/bats-tools/versions)

Run bats:
```bash
$> docker run ghcr.io/vincent-herlemont/bats-tools:latest bats
...
```

### Tools available and version of tools

See: [Dockerfile#L12-L15](Dockerfile#L12-L15)

### How to use it ?

Run script inside the docker image and add 
```bash
# file.bats
setup() {
    load "$BATS/bats-support/load"
    load "$BATS/bats-assert/load"
    load "$BATS/bats-file/load"
}
```