# be in $branch that will be merged into
# run "git switch $branch_base_main" before to merge into it
git
    merge $branch_newFeature_or_hotfix
        [$remote_origin/$branch_master]
        --no-ff # no fast forward
        --squash # squash all commits from the specified branch into a single commit
        --abort
    
    mergetool [--tool-help]

    # be in $branch that need be rebased
    rebase [HEAD | MASTER | MAIN | ORIG_HEAD | HEAD@{1} | $branch | $commit | ]
        [$branch_base $branch_branch]
        [-i, --interactive]
        [--continue | --abort | --skip]
        [--onto $base_master $branch_exclude $branch_include] # rebase $include into $base, excluding $exclude
        [--autosquash]
    
    cherry-pick [-x] # take commit from another branch
        $commit
        $commit_start $commit_end