GIT_HOOKS_DIR := .git/hooks
TEMPLATE_DIR := bin
POST_COMMIT_TEMPLATE := $(TEMPLATE_DIR)/post-commit-template

install-hook:
	@echo "Installing post-commit hook..."
	@mkdir -p $(GIT_HOOKS_DIR)
	@cp $(POST_COMMIT_TEMPLATE) $(GIT_HOOKS_DIR)/post-commit
	@chmod +x $(GIT_HOOKS_DIR)/post-commit
	@echo "Post-commit hook installed successfully."
