# I ❤️ Xcode
My own Xcode templates and snippets

# To add a new code snippet and push to remote
- from terminal `cd code-snippets`
- run `./show-diff.sh` and perform a manual check on what the differences are between Xcode snippets folder and the local repo. If the Xcode folder has some entries named with a UUID value, make sure those entries are first valid snippets by checking their content, and if valid, rename them. The `show-diff.sh` script uses `ksdiff`, so that utility must be installed
- make sure Xcode is in line with local copy by runnig `./sync-from-xcode.sh`.
- add the snippet/template normally with Xcode

