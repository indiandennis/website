del /F /Q public
mkdir public
git worktree prune
del /F /Q .git/worktrees/public
git worktree add -B gh-pages  public origin/gh-pages
del /F /Q public
hugo
cd public
git add --all
git commit -m "Publish with script"
PAUSE