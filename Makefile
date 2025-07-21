PREFIX ?= $(HOME)
BINDIR = $(PREFIX)/bin

.PHONY: install uninstall clean test

install:
	@echo "Installing claude-tools to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@cp bin/claude-tools $(BINDIR)/
	@chmod +x $(BINDIR)/claude-tools
	@echo "✅ Installation complete!"
	@echo "💡 Make sure $(BINDIR) is in your PATH"

uninstall:
	@echo "Uninstalling claude-tools..."
	@rm -f $(BINDIR)/claude-tools
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
	@echo "  install   - Install claude-tools to $(BINDIR)"
	@echo "  uninstall - Remove claude-tools from $(BINDIR)"
	@echo "  test      - Run tests"
	@echo "  clean     - Clean temporary files"
	@echo "  help      - Show this help"