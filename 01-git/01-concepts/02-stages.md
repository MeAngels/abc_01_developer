
## Versionamento

| version | release       | description                     |
| :-:     | :-:           | :-:                             |
| 0.0.x   | path release  | bug fixes \| hot fix            |
| 0.x.0   | minor release | new feature                     |
| x.0.0   | major release | new system, break compatibility |

## Stages

| abbrv | Stages    | Description                                                            |
| :-: | :-: | :-: |
| U | Untracked | the file exist but is not part of repository                               |
| A | Added     | the file and changed have been added to version but not commited yet       |
| M | Modified  | the file is part of repository but has changes neither commited nor staged |
|   | Commited  | the changes has been commited                                              |

| | | |
| --- | --- | --- |
| working tree          | --worktree            | working directory with modified files |
| staging area (index)  | --cached \| --staged  | modified files added to be commited   |
| repository (HEAD)     |                       | files saved in repository             |

### Head

+ HEAD: current commit
+ HEAD~n: n back commits
+ HEAD^ = HEAD~1

## Flow

```mermaid
---
title: Working Directory
---
flowchart
    subgraph working
        subgraph untracked
            %% Any file in working directory that were not in last snapshot and are not in staging area
        end
        untracked --- tracked
        subgraph tracked
            staged
            modified
            unmodified
        end
    end
```

```mermaid
---
title: State
---
sequenceDiagram
    participant working
    participant index
    participant repository
    participant remote@{"type":"database"}

    Note over working: working-directory
    Note over index: staging-area
    Note over remote: origin

    remote ->> working: checkout the project
    Note over working: HEAD
    Note over remote,working: git status
    working -->> index: git add
    Note over working: untracked
    index -->>() repository: git commit
    Note over repository: unmodified

    Loop
        index --> working: edit file
        working -->> index: git add (-u)
        Note over working: modified
        index -->>() repository: git commit
    End

    repository --) remote: git push
    remote --) repository: git fetch

    repository --x index: git rm
    Note over index: untracked

    working --) repository: git commit -a

    repository -->> working: git checkout [HEAD]
    working -->> working: git checkout

    repository -->> working: git merge/rebase
    remote -->> working: git pull $remote_origin $branch_main (--rebase)
```
