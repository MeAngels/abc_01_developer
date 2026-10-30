git difftool [--tool-help]

# default: compare working space, do not show staging area or commited in repository
git diff
    --check
    [?HEAD] # default, compare with branch master
    [--staged | --cached] # staged and cached are the same, to show modified that are in staging area
    [($branch | $tag | commit):$file] [$file]
        [$toCompare]
