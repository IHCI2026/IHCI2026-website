.PHONY: build serve clean new help

HUGO := hugo
PORT  := 1313

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

build: ## Build the site to ./public
	$(HUGO) --minify

serve: ## Start dev server with live reload
	$(HUGO) server --port $(PORT) --bind 0.0.0.0 --buildFuture

serve-drafts: ## Start dev server including draft content
	$(HUGO) server --port $(PORT) --bind 0.0.0.0 --buildFuture --buildDrafts

clean: ## Remove generated files
	rm -rf public/

new: ## Create new content (usage: make new page=posts/my-post)
	$(HUGO) new $(page)
