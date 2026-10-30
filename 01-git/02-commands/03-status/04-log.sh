gitk

git
    log
        [$globPattern | $commit_hash]
        [$branch | --all]

        [-$number] # limite entries

        [$start_branch_or_commit..[$end_branch_or_commit]]
            # HEAD..FETCH_HEAD $file
            # if $end is before from $start show from commit from $end that is not in $start
        
        [--abbrev-commit]
        [--stat]
        [-p] # patch, display full diff each commit
        # https://git-scm.com/docs/pretty-formats
        # pretty options: format: "$formats" | oneline | short | medium | full | fuller
        # --pretty=format: "%h \t %s \t %cd"
            # %h short hash
            # %s subject
            # %cd, %cs commit date
            # %b body
        [--pretty=$option]
            [--online]
        [--graph]
        [--sumary]
        [--decorate] # short references such as branch and tag
        [--full-history]

        # date: YYYY-MM-DD
        # relative: $number.(week|month) | X years X Months X days X minutes ago
        --since=$date
            # --(after | until | before)
        
        # can use more than one grep and will filter matching any of them
        # --all-match option to match all criterias
        --all-match
        --grep $filter_message
        [--diff-filter=[D]] # filter deleted

    reflog # [show HEAD]

    shortlog
    