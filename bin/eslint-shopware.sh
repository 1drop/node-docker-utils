#!/usr/bin/env bash

cd ./app/shopware

# CUSTOM PLUGINS
if [[ -n $(find custom/plugins/Od*/**/ -name '*.js') ]]; then
    echo "linting js files in custom plugins";
    find custom/plugins/Od*/**/ -name '*.js' -print0 | xargs -0 eslint -c .eslintrc.js --quiet
    # catch exit code
    if [ ! $? -eq 0 ]; then
      exit 1
    fi
fi
# LOCAL PLUGINS
if [[ -n $(find engine/Shopware/Plugins/Local/*/Od*/**/ -name '*.js') ]]; then
    echo "linting js files in local plugins";
    find engine/Shopware/Plugins/Local/*/Od*/**/ -name '*.js' -print0 | xargs -0 eslint -c .eslintrc.js --quiet
    # catch exit code
    if [ ! $? -eq 0 ]; then
      exit 1
    fi
fi
# THEMES
if [[ -n $(find themes/Frontend/**/ -name '*.js') ]]; then
    echo "linting js files in themes";
    find themes/Frontend/**/ -name '*.js' -print0 | xargs -0 eslint -c .eslintrc.js --quiet
    # catch exit code
    if [ ! $? -eq 0 ]; then
      exit 1
    fi
fi
