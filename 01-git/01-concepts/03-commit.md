#

[Conventional Commits](https://www.conventionalcommits.org/)

## Commit Practices

+ Commit early and often
+ Use branching strategy
+ Test the code before commit
+ Write good commit message
+ Small single purpose commit
+ Avoid rewrite master history
+ Fix a workflow

## Commit

* Captalized, short, less than 50 character, wrap 72 column because is a better default for git log
```sh
$type[($scope)]: $description

[$body]

[$footer]
```

### type

* fix: patches a bug in your codebase (this correlates with **PATCH** in _Semantic Versioning_, 0.0.x)
* feat: introduces a new feature (this correlates with **MINOR** in _Semantic Versioning_, 0.x.0)
* refactor: rewrite/restructure the code, however does not change any API behavior. Refactored code that neither fixes a bug nor adds a feature. (eg. renaming a variable)
* chore: (no production changes) changes that do not relate to a fix or feature and do not modify src or test files (for example updating dependencies)(prettier, eslint, ".gitignore")
* docs: documentation such as the README or other markdown files
* ci: continuous integration related
* style: changes that do not affect the meaning: formating, white-spaces, semi-colons
* build: changes that affect the build system or external dependencies
* test: including new or correcting previous tests
* perf: performance improvements
* revert: reverts a previous commit (back to $commit)
* BREAKING CHANGE: a commit that has a footer `BREAKING CHANGE:` or appends a `!` after type/scope, introduces a breaking API change (correlating with **MAJOR** in _Semantic Versioning_)

### Scope

+ noun describing a section of the codebase
+ specifying place of the commit change, assign component
* init, runner, watcher, config, web-server, proxy

### Description

+ not capitalize the first letter;
+ imperative present tense; (fix, refactor, add, remove, ...)
+ not dot at the end;

### Body

Should include the motivation for the change and contrast this with previous behavior.

```sh
refers to $reference
```

### footer

+ $token (: | #), use "-" instead of whitespace

* BREAKING CHANGE: $description
* Reviewed-by: $name
* Refs: #issue-code
* Acked-by: $name
* Applied-by: $name
* Fixes #hash
* Closes $hash_1, $hash_n
* Signed-off-by
