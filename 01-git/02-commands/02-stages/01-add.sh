$globPattern
    $file
    #example: fileName.ext | test*.ext | dir/* | dir/*.txt | file.*
    $folder
    # examples: $pattern/ | */$subFolder/ | **/$subfolder/

# add file content to index
# --all | -A
git add (. | * | --all | -A | ...$globPattern)
    [-v, --verbose] # verbose
    [-u] # update
    [-n] # just verify
    [-p, --patch] # see changes to add
    [-i, --interactive]
    [-e, --edit] # edit mode
