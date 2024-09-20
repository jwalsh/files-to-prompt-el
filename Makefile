.PHONY: all test clean submodules

EMACS ?= emacs
CASK ?= cask

all: test

submodules:
	git submodule update --init --recursive

test: submodules
	$(CASK) exec ert-runner

clean:
	rm -rf .cask
	rm -f *.elc

install:
	$(CASK) install

.cask: Cask
	$(CASK) install
	@touch .cask

# Add any additional targets for TypeScript or Python versions if needed
# For example:
# ts-test:
#     cd files-to-prompt-ts && npm test
# py-test:
#     cd files-to-prompt-py && python -m pytest
