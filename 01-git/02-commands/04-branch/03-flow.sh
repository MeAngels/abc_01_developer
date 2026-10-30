git checkout -b $newBranchName
# --------------------------------------------------
# make <n> changes
git commit -m "WIP" # work in progress
# --------------------------------------------------
git reset origin/main
# reset but do not undo progress, just undo the commit
# it is like did all work but did not the commits
# --------------------------------------------------
#if something broken, recue the "lost" (do not lost) commits
git reflog # time line every commit referenced local repository even across branches
git checkout $commit~1 $file
