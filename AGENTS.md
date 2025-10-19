# AGENTS.md

This file provides guidance to AI agents when working with code in this repository.

## Overview

This is a fully automated template repository designed to provide a complete development environment with strict linting, formatting, and release automation. The project emphasizes compliance with GitHub Community Standards and uses conventional commits with semantic versioning for automated releases.

## Development Setup

```sh
make dev-install  # Installs npm dependencies and syncs Vale styles
```

This runs `npm ci` and `vale sync` to set up all required tools including linters and Git hooks.

## Common Commands

### Linting

```sh
# Run all linters
make lint

# Run specific linters
npm run lint              # All npm-based lints (credentials, markdown, prettier)
npm run lint:credentials  # Secretlint (skipped in CI with $CI env var check)
npm run lint:md          # markdownlint
npm run lint:prettier    # Prettier check

# Makefile-based linters
make lint-text           # Vale prose linting
make lint-yml            # yamllint
make lint-action         # actionlint for GitHub Actions workflows
```

### Formatting

```sh
npm run format           # Auto-fix all formatters
npm run format:md        # Auto-fix markdown
npm run format:prettier  # Auto-format with Prettier
```

### Git Commits

This repository enforces Conventional Commits via commitlint. Use one of these methods:

```sh
npm run commit  # Interactive Commitizen prompt (recommended)
npm run cm      # Alias for npm run commit
git commit      # Standard commit (will be validated by commitlint hook)
```

### Update .gitignore

```sh
make update-gi  # Regenerates .gitignore from custom template and gibo
```

## Architecture and Workflow

### Git Hooks (Husky)

- **pre-commit** (.husky/pre-commit): Runs `lint-staged` on staged files
- **commit-msg** (.husky/commit-msg): Validates commit messages with commitlint

### Lint-Staged Configuration (.lintstagedrc.yml)

Staged files are automatically linted before commit:

- All files: secretlint, prettier
- Markdown files: markdownlint, vale
- YAML files: yamllint
- GitHub Actions workflows: actionlint

### Commit Message Rules

- Must follow Conventional Commits v1.0.0
- Enforced by @commitlint/config-conventional
- Format: `<type>(<scope>): <description>`
- Examples: `feat(docs): add usage guide`, `fix(ci): resolve workflow permissions`

### Release Automation (semantic-release)

Configured in .releaserc.yml:

- Automatically analyzes commits and determines next version
- Generates CHANGELOG in `docs/CHANGELOG.md`
- Updates package.json and package-lock.json
- Creates GitHub releases
- Follows Conventional Commits for version bumps

### Branching Strategy

Uses GitHub flow:

- Main branch: `main`
- Feature branches created from main
- PRs must follow same commit message rules as PR title

### CI/CD (.github/workflows/test.yml)

The Test workflow runs on push to main and on all PRs:

1. Lint credentials (secretlint)
2. Lint prose (Vale)
3. Lint npm scripts
4. Lint commit messages (commitlint, skipped for Dependabot)
5. Lint YAML (yamllint)
6. Lint GitHub Actions (actionlint)

Note: Build and test jobs are commented out as this is a template with no build/test scripts.

### Node Version Management

- Node and actionlint versions specified in .tool-versions
- npm version specified in package.json `engines.npm`
- CI uses actions/setup-node with node-version-file

## Important Notes

- Secretlint is skipped in CI environments (checks `[ "$CI" = 'true' ]`)
- Vale requires explicit file paths in CI (see test.yml for examples)
- This is a template repository meant to be used via GitHub's "Use this template" feature
- The repository uses WTFPL license
- All documentation lives in the `docs/` directory
