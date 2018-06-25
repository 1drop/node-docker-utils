# 1drop node docker utils

## Usage

### Commandline


``` bash
docker run -i --rm -v $(pwd):/home/node 1drop/node-docker-utils ./eslint-shopware.sh
```

### gitlab-ci

```yaml
lint:js:
  stage: lint
  image: 1drop/node-docker-utils:8
  script:
    - ./eslint-shopware.sh
```