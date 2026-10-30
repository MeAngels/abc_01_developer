git

    mv $fileDirecotry_old_from $fileDirectory_new_to # move/rename

    restore $globPattern # restore working tree files
        [--staged] # unstage file
        [--source=HEAD~1]
    
    rm $globPattern # remove files from the working directory and index
        [--cached] # remove only from index, file will be "untracked"
    
    revert (HEAD | $commitHash)
        [--abort]
    
    reset
        [HEAD]
        [$commitHash]
        [HEAD~1] # undo last commit
        [$mode]
        # mode: soft | mixed (default) | hard
            # soft: change HEAD
            # mixed: change staging area (but not working directory)
            # hard: reset everything (clear modifieds)
        # mode: merge | keep

        # clean files that is not tracking
    clean
        [-i] # interactive
        [-n] # show files that will be deleted
        [-d] # remove untracked directories
        [-f] # force
        [-x] # dfelete even files that are ignored by .gitignore
        [-X] # remove only ignored files
