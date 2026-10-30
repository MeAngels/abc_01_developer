# $remote/$branch

git
    remote # list of remote
        [-v] # view
        add $remote_alias_name_origin $url
        (show | ls-remote) $remote
            [--heads]
        rename $remote_alias_name_from_old $remote_alias_name_to_new
            # rename $old $new
        remove $remote_alias_name
            # rm $remote
    
    fetch $remote_alias_name_origin [$branch]

    pull # fetch and merge
        $remote $branch
        [--rebase $alias]
    
    # refs/heads/$branch_local:refs/heads/$branch_remote
    # $branch_local:$branch_remote
    push $remote
        [$branch_or_tag] # push origin main
        [--set-upstream] # update some renaming
        [--delete $object]
        [--tags]
        [-u]
        # -u $newBranchName && --delete $oldBranchName
        [--force]