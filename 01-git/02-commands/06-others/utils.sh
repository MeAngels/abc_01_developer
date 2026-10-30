git config --get remote.origin.url

git clean -df

#
git reset --soft HEAD~

# unstage
git reset HEAD $file
git restore --staged $file

# detached-HEAD
git checkout $commit_sha
# do something > commit_n
# to save: create new branch > commit everything > merge

# merge repositories
git clone $repo_1
git remote add $repo_origin_name $repo_2
git remote -v
git fetch $repo_name --tags
git checkout -b $new_branch_name $repo_name/master
git merge $new_branch_name --allow-unrelated-histories
git remote remove $repo_origin_name

git remote add $ref_repo_1 $repo_1
git remote add $ref_repo_2 $repo_2
git remote -v
git fetch $ref_repo_1
git fetch $ref_repo_2

# update from remote
git stash -u
git checkout main
git pull
git checkout $branch
git (merge | rebase) main
git stash pop

#
git checkout $main
git fetch $origin $main
git rebase -i $origin/main
# squash
git push $origin $main
