git flow init
git flow feature start $featureBranch
git flow feature finish $featureBranch
publish $featureName

git submodule
    add $repository_path_url [$folder]
    init
    update # or --recurse-submodules on clone command
git submodule update --init --recursive
