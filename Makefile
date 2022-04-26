.PHONY: install
install:
	npm ci

.PHONY: lint
lint:
	make lint-npm
	make lint-sh
	make lint-action
	make lint-text

.PHONY: lint-npm
lint-npm:
	npm run lint

.PHONY: lint-sh
lint-sh:
	shellcheck .husky/commit-msg .husky/pre-commit

lint-action:
	actionlint

.PHONY: lint-text
lint-text:
	vale README.md CONTRIBUTING.md .github/*.md .github/ISSUE_TEMPLATE .github/styles/Microsoft
