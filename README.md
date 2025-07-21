# Claude Tools CLI

A collection of CLI tools to enhance your Claude development workflow.

## Features

- **Worktree Management**: Create isolated git worktrees with automatic Claude Code startup

## Installation

```bash
make install
```

## Usage

### Worktree Commands

Create a new worktree and start Claude Code:
```bash
claude-tools worktree <identifier>
```

Example:
```bash
claude-tools worktree netflix-clone
```

This will:
1. Create a new git worktree in `../project-claude-<repo-name>/<identifier>`
2. Create a new branch `feature/kurotaka-claude/<identifier>`
3. Navigate to the worktree directory
4. Start Claude Code

## Development

See `docs/` for development documentation.

## License

MIT