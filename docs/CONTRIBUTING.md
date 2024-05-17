# Contributing Guideline

## Requirements

| Tool                                                        | Version                                                                                               |
| ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| Node.js                                                     | [.tool-versions](https://github.com/haru52/base_template/blob/main/.tool-versions)                    |
| npm                                                         | `engines.npm` value in [package.json](https://github.com/haru52/base_template/blob/main/package.json) |
| [gibo](https://github.com/simonwhitaker/gibo#readme)        | ^3.0.11                                                                                               |
| [Vale CLI](https://vale.sh/)                                | ^3.4.2                                                                                                |
| [yamllint](https://yamllint.readthedocs.io/)                | ^1.35.1                                                                                               |
| [ShellCheck](https://github.com/koalaman/shellcheck#readme) | ^0.10.0                                                                                               |
| [actionlint](https://github.com/rhysd/actionlint#readme)    | [.tool-versions](https://github.com/haru52/base_template/blob/main/.tool-versions)                    |

## Rules

| Category               | Rule                                                                                                                                       |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| Git commit             | [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)                                                              |
|                        | [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/@commitlint/config-conventional#readme) |
| Git branching strategy | [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)                                                               |
| Versioning             | [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html)                                                                           |
| GitHub PR title        | Same as the commit message rule                                                                                                            |

## Development flow

1. Fork this repo
2. Develop and create a Pull Request (PR) according to [the preceding rules](#rules)
3. This repo maintainers will review the PR
4. The maintainers will merge the PR branch if they approved it, otherwise they will close it without merging

## Installation

```sh
git clone git@github.com:<your org>/base_template.git
cd base_template
make dev-install
```

## Lint

```sh
make lint
```

## Git commit

```sh
npm run commit # Commitizen with commitlint adapter
# or
npm run cm     # Alias for `npm run commit`
# or
git commit     # Standard Git commit
```
