.DEFAULT_GOAL := help

build:
	go build -o screeningtest

test:
	@if [[ ! -f screeningtest ]] && [[ ! -x screeningtest ]]; then exit 1; fi

clean:
	@if [[ -f screeningtest ]]; then rm screeningtest; fi

help: ## See all the Makefile targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build test clean help
