# global: ~/.gitconfig
# local: .git/config

git config
    # config file location
    [--system | --global | --local | --worktree | -f, --file $file]

    # action, can run only one at time
    [--get]
    [--add]
    [--unset]
    [-l, --list]
    [-e] # edit in editor

    core.editor "code --wait"
    user.name $username
    user.email $email

    # true | input | false
    core.autocrlf
    color.ui true

    # git difftool
    diff.tool vscode
    difftool.vscode.cmd "code --wait --diff $local $remote"
    # git mergetool
    merge.tool vscode
    mergetool.vscode.cmd "code --wait $merged"

    # use shortcut for the command
    alias.co checkout
    alias.br branch
    alias.ci commit
    alias.st status
    alias.unstage "reset HEAD --"
    alias.last "log -1 HEAD"

    # credential cache
    credential.helper cache

git config --list --show-origin
