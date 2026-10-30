git
    branch # list branches if no other arg
        [--list | -all]
        [-a | -r | --remotes] # all and remote flag
        $branch_name # create branch
            [$base_main]
            [-d | -D] # delete, -d save delete if merged, -D forced delete
            [-v] # --verbose for each branch, last commit
            [--merged | --no-merged] # filter
            [-m, --move $branch_oldName $branch_newName] # rename
                # -M for main branch
                # -m $newName
            [-u $remote/$branch]
        -vv
    
    switch
        - # return
        $branchName
            [-c, --create]
    
    # move HEAD ponter
    # work as switch | restore
    checkout
        [-] # last
        [master | main | $branch | $commit | $tag]
        [-b $newBranchName [$base]] # create branch and switch
            [-- $file]
        [$commit~1 $file] # restore removed file from commit
        $newName $remote/$branch # to track automatic between local and remote
