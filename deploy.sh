ORIGINAL_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
git branch -D gh-pages
git checkout branch gh-pages
pnpm build-gh-pages
git add .
git commit -m "deploy: gh-pages"
git push origin --force
git checkout $ORIGINAL_BRANCH