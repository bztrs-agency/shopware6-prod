#!/usr/bin/env bash

echo $(cat .branch)

if ! git config remote.upstream.url > /dev/null; then
    git remote add upstream https://github.com/shopware/production.git
fi

git checkout $(cat .branch)
git fetch upstream
git fetch --tags upstream
git merge "upstream/$(cat .branch)"
git push -f --tags origin $(cat .branch)
