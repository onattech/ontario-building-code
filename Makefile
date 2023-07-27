# Commands
.PHONY: list
list:
	@echo "📋 Available commands:"
	@awk -F':.*?## ' '/^[a-zA-Z0-9_-]+:/ && !/^[[:blank:]]*list:/ { if ($$2 == "") { printf "   • %s\n", $$1 } else { printf "   • %-20s %s\n", $$1, $$2 } }' $(MAKEFILE_LIST)

.PHONY: start 
start: ## 💠 Starts Docusaurus dev environment
	pnpm start

.PHONY: swizzle
swizzle: ## 📤 Swizzle typescript components
	pnpm swizzle --typescript

.PHONY: build
build: ## 🏗️  Build static website
	pnpm build

.PHONY: serve
serve: ## 🍽  Serve built static website
	pnpm serve

.PHONY: index-search
index-search: ## 🔎 Build index for Algolia search
	pnpm index-search
