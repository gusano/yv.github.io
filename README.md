http://yvanvolochine.com

This site uses `[Jekyll](https://jekyllrb.com)`.

### Run it locally:

    bundle install
    make serve

Go to http://127.0.0.1:4000/

Local development files are built into `_site` folder.

### Deploy

To deploy a new version of the site:

    $ (master) ~ git commit -am "..."
    $ (master) ~ make deploy

Behind the hood this will:
- cleanup `dist` folder (where production builds go)
- trigger a mew production build
- commit that to `gh-pages` branch
- push `gh-pages` branch to github
- go back to base folder and `master` branch

##### Ooops

If you ever delete the `dist` folder accidently, check this out:
http://pressedpixels.com/articles/deploying-to-github-pages-with-git-worktree/
