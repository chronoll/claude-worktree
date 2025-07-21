PREFIX ?= $(HOME)
BINDIR = $(PREFIX)/bin

.PHONY: install uninstall clean test

install:
	@echo "Installing claude-worktree to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@cp bin/claude-worktree $(BINDIR)/
	@chmod +x $(BINDIR)/claude-worktree
	@echo "✅ Installation complete!"
	@echo "💡 Make sure $(BINDIR) is in your PATH"

uninstall:
	@echo "Uninstalling claude-worktree..."
	@rm -f $(BINDIR)/claude-worktree
	@echo "✅ Uninstall complete!"

test:
	@echo "Running tests..."
	@./tests/test-worktree.sh

clean:
	@echo "Cleaning temporary files..."
	@find . -name "*.log" -delete
	@find . -name "*~" -delete

help:
	@echo "Available targets:"
	@echo "  install   - Install claude-worktree to $(BINDIR)"
	@echo "  uninstall - Remove claude-worktree from $(BINDIR)"
	@echo "  test      - Run tests"
	@echo "  clean     - Clean temporary files"
	@echo "  help      - Show this help"