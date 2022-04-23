.PHONY: install
install:
	npm ci

.PHONY: lint
lint:
	make lint-npm
	make lint-sh

.PHONY: lint-npm
lint-npm:
	npm run lint

.PHONY: lint-sh
lint-sh:
	shellcheck .husky/commit-msg .husky/pre-commit
