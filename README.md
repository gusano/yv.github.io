http://yvanvolochine.com

This site uses [`Jekyll`](https://jekyllrb.com).

### Run it locally:

    bundle install
    make serve

Go to http://127.0.0.1:4000/

Local development files are built into `_site` folder.

### Deploy

We use `git worktree` and `gh-pages` branch inside `dist` folder, so that the main
folder is on `master` branch and `dist` folder is on `gh-pages` branch.

To deploy a new version of the site:

    $ (master) ~ git commit -am "..."
    $ (master) ~ make deploy

This is what happens behind the hood:
- cleanup `dist` folder
- trigger a new production build
- commit changes to `gh-pages` branch
- (force) push `gh-pages` branch to github
- go back to base folder and `master` branch

#### Ooops

If you ever delete the `dist` folder accidently, do this:

    $ (master) ~ git worktree prune
    $ (master) ~ git branch -D gh-pages
    $ (master) ~ mkdir dist
    $ (master) ~ git checkout --orphan gh-pages
    $ (master) ~ git reset
    $ (master) ~ git commit --allow-empty -m "Initial commit"
    $ (master) ~ git checkout --force master
    $ (master) ~ git worktree add dist gh-pages

http://pressedpixels.com/articles/deploying-to-github-pages-with-git-worktree/
