cd ./public
git init
git config --global push.default matching
git config --global user.email "${GitHubEMail}"
git config --global user.name "${GitHubUser}"
git remote add origin https://${GitHubKEY}@github.com/${GitHubUser}/neohosts.git
git pull origin gh-pages
rm -rf ./*
cp -rf ../_build/hosts ./
git add --all .
git commit -m "neoHosts Nightly Build by Travis CI"
git push --quiet --force origin HEAD:gh-pages