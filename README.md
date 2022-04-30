# Base Template Repository

[![Main](https://github.com/haru52/base_template/actions/workflows/main.yml/badge.svg)](https://github.com/haru52/base_template/actions/workflows/main.yml)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://commitizen.github.io/cz-cli/)

## Overview

<!-- vale write-good.TooWordy = NO -->
This is a fully automated template repository. You can use, extend and modify this template as you wish!
<!-- vale write-good.TooWordy = YES -->

This template provides full compliance with [GitHub Community Standards](https://github.com/haru52/base_template/community). This template removes your pain to add boilerplate in the repo initialization phase ☺️

## Requirements

| Tool                                                        | Version                                          |
| ----------------------------------------------------------- | ------------------------------------------------ |
| GitHub account                                              |                                                  |
| Node.js and npm                                             | `engines` values in [package.json](package.json) |
| [gibo](https://github.com/simonwhitaker/gibo#readme)        | >=2.2.7                                          |
| [Vale CLI](https://vale.sh/)                                | >=2.16.0                                         |
| [ShellCheck](https://github.com/koalaman/shellcheck#readme) | >=0.8.0                                          |
| [actionlint](https://github.com/rhysd/actionlint#readme)    | [.tool-versions](.tool-versions)                 |

## Installation

Nothing to do.

## Usage

1. Open this repo page on GitHub
2. Click `Use this template` button
3. After the creation of the repo, go `https://github.com/<org>/<repo>/settings/actions`
4. If `Read and write permissions` option isn't selected in `Workflow permissions` setting, select it and click `Save` button
5. Now you are ready to write code in a comfortable environment 🎉

## Description

### Tech stack

| Category                      | Tool                                                                         |
| ----------------------------- | ---------------------------------------------------------------------------- |
| .gitignore management         | [gibo](https://github.com/simonwhitaker/gibo#readme)                         |
| Git hook                      | [Husky](https://typicode.github.io/husky)                                    |
| Git commit I/F                | [Commitizen](https://commitizen.github.io/cz-cli/)                           |
| CI/CD                         | [GitHub Actions](https://github.com/features/actions)                        |
| Code review                   | [reviewdog](https://github.com/reviewdog/reviewdog#readme)                   |
| Release                       | [semantic-release](https://semantic-release.gitbook.io/semantic-release/)    |
| Vulnerability management      | [Dependabot](https://docs.github.com/en/code-security/dependabot)            |
| Lint: Git staged              | [lint-staged](https://github.com/okonet/lint-staged#readme)                  |
| Lint: Git commit message      | [commitlint](https://commitlint.js.org/)                                     |
| Lint: credentials             | [Secretlint](https://github.com/secretlint/secretlint#readme)                |
| Lint: Markdown                | [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli#readme) |
| Lint: text (prose)            | [Vale](https://vale.sh/)                                                     |
| Lint: shell script            | [ShellCheck](https://github.com/koalaman/shellcheck#readme)                  |
| Lint: YAML, etc.              | [Prettier](https://prettier.io/)                                             |
| Lint: GitHub Actions workflow | [actionlint](https://github.com/rhysd/actionlint#readme)                     |

## Versioning

[Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html)

## License

[WTFPL](LICENSE)

## Contributing

[Contributing Guideline](CONTRIBUTING.md)

## Author

[haru](https://haru52.com/)
