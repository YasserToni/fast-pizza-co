#!/usr/bin/env sh
#abort on errors
set -e 

# build 
npm run build 

# navigate into the build output directory 
cd dist

# place . nojekyll to bypass Jekyll processing
ech > .nojekll 

#if you are deploying to a custom domain 
# echo 'www.example.com' > CNAME

git init 
git checkout -B main
git add -A 
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
#git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git.main

# ig you are deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:YasserToni/fast-pizza-co.git main:gh-pages

cd -