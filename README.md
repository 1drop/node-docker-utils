# 1drop node docker utils

## Usage

### Commandline


``` bash
docker run -it --rm -v $(pwd):/home/node 1drop/node-docker-utils bash -s < ./ci/eslint.sh
```

### gitlab-ci

```yaml
lint:js:
  stage: lint
  image: 1drop/node-docker-utils:8
  script:
    - bash -s < ./ci/eslint.sh
```