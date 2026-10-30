# repository: path/to/repository
git clone $repository_project [$toDirName_changeNewName]

$repository_project =
[
    $url
    | http://$repository_link
    | https://github.com/$username/$repository.git
    | /$dir/$repository_local
    | $user@$server:$path/$repo.git
]

$toDirName_changeNewName # specific new path and/or new project-name
