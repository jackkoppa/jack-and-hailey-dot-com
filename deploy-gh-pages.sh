ORIGINAL_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
git branch -D gh-pages
git checkout -b gh-pages
pnpm build-gh-pages
git add .
git commit -m "deploy: gh-pages"
git push origin --set-upstream origin gh-pages --force
git checkout $ORIGINAL_BRANCH