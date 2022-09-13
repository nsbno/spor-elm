# How to publish new version

__note: This repo only exist because elm requires one github repo per package. Actual development happens in the nsbno/spor repo__

To publish a new version of spor-elm, follow these steps:

1. Run `git submodule init` and `git submodule update`.
1. Go into the `spor/` folder and run `git checkout main` (and `git pull`).
2. In the root directory, run the `./update.sh` script. This should re-generate the code using the latest changes from `spor`.
3. Run `elm bump` to increase the version.
4. Commit the changes, and tag the new commit with the version specified in `elm.json`.
5. After pushing the new commit _and_ the new tag, run `elm publish`.
