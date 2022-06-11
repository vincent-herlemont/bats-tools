# Bats tools in a docker image

```bash
$> docker run ghcr.io/vincent-herlemont/bats-tools:1.0.0 bats
...
```

### Available tools and versions

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