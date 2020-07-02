#!/usr/bin/env sh

# abort on errors
set -e

# lint and build
npm run lint
npm run build

# copy dist contents over
cp -a dist/. ../evanshriner.github.io

# deploy
cd ../evanshriner.github.io
git add .
git commit -m 'deployment commit'
git push origin master

