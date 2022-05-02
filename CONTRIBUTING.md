# Contributing Guideline

## Rules

| Category               | Rule                                                                                                                                         |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Git commit             | [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)                                                                |
|                        | [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/%40commitlint/config-conventional#readme) |
| Git branching strategy | [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)                                                                 |
| Versioning             | [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html)                                                                             |

## Development flow

1. Fork this repository
2. Develop and create a Pull Request (PR) according to the above rules
3. This repository maintainers will review the PR
4. The maintainers will merge the PR branch if they approved it, otherwise they will close it without merging

## Installation

```sh
gh repo clone <your org>/base_template # Clone the repository
cd base_template
make
```

## Lint

```sh
make lint
```

## Git commit

```sh
npm run commit # Commitizen with commitlint adapter
# or
npm run cm     # alias for `npm run commit`
# or
git commit     # standard Git commit
```
