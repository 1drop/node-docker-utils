#!/usr/bin/env bash

cd $HOME

if [[ -n $(find ./**/ -name '*.js') ]]; then
    echo "linting js files";
    find ./**/ -name '*.js' -print0 | xargs -0 eslint -c .eslintrc.js --quiet
    # catch exit code
    if [ ! $? -eq 0 ]; then
      exit 1
    fi
fi
