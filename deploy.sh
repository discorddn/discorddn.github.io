#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
echo "discorddn.mod.land" > CNAME
git add -A
git commit -m 'deploy'
git branch -M main

# if you are deploying to https://<USERNAME>.github.io
git remote add origin https://github.com/discorddn/discorddn.github.io
git push -f origin main

cd -
