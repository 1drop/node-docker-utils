#!/usr/bin/env bash

cd $CI_PROJECT_DIR

if [[ -n $(find ./**/ -name '*.less') ]]; then
    echo "linting less files";
    find ./**/ -name '*.less' -print0 | xargs -0 stylelint
    # catch exit code
    if [ ! $? -eq 0 ]; then
      exit 1
    fi
fi
