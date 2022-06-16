.PHONY: install lint lint-npm lint-text lint-yaml lint-sh lint-action update-gi

install:
	npm ci
	vale sync

lint: lint-npm lint-text lint-yaml lint-sh lint-action

lint-npm:
	npm run lint

lint-text:
	vale README.md CONTRIBUTING.md SECURITY.md .github/*.md .github/ISSUE_TEMPLATE

lint-yaml:
	yamllint --strict .

lint-sh:
	shellcheck .husky/commit-msg .husky/pre-commit

lint-action:
	actionlint

update-gi:
	gibo update
	cat .gitignore_custom >| .gitignore
	gibo dump macOS Linux Windows VisualStudioCode JetBrains Vim Node >> .gitignore
