#!/usr/bin/env bash
TAG=$(git describe --abbrev=0)
echo "Latest tag: ${TAG}"

if [[ "$TAG" == *"-"* ]]; then
    NEW_VERSION=$(($(echo ${TAG} | grep -Eo '[0-9]+$')+1))
    NEW_TAG=${TAG%-*}-${NEW_VERSION}
else
    NEW_TAG="${TAG}-1"
fi
echo "New tag is ${NEW_TAG}"

git tag -a ${NEW_TAG} -m "Tagged new version ${NEW_TAG}"
git push origin ${NEW_TAG}
