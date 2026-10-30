$branch_or_commit_or_tag = $commitHash^ | HEAD[@{$number}]

git show $branch_or_commitHash_or_tag [--stat]

# HEAD | HEAD^ | HEAD^^ | HEAD~4

# @@result@@
# $result = $oldVersion $newVersion
# $version = /- $line,$quantityEdited
# $line: edited on line
# $+/-: identified if edit is insert or exclude
# $quantity: how many lines modified from that line

git
    grep $string $branch_or_tag
    bisect
        start
        good $commit_goodReference
        bad $commit_badReference
        reset
