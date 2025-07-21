# Claude Worktree CLI

A CLI tool for managing git worktrees with automatic Claude Code startup.

## Features

- **Worktree Creation**: Create isolated git worktrees with automatic Claude Code startup
- **Worktree Switching**: Switch between existing worktrees and start Claude Code
- **Worktree Listing**: View all available worktrees for the current repository

## Installation

```bash
make install
```

## Usage

### Available Commands

#### Create a new worktree
```bash
claude-worktree worktree <identifier>
```

#### List all worktrees
```bash
claude-worktree list
```

#### Switch to an existing worktree
```bash
claude-worktree switch <identifier>
```

#### Show help
```bash
claude-worktree help
```

### Examples

```bash
# Create a new worktree and start Claude Code
claude-worktree worktree netflix-clone

# List all available worktrees
claude-worktree list

# Switch to an existing worktree
claude-worktree switch netflix-clone
```

### How it works

**Creating a worktree** (`claude-worktree worktree <identifier>`):
1. Creates a new git worktree in `../project-claude-<repo-name>/<identifier>`
2. Creates a new branch `feature/kurotaka-claude/<identifier>`
3. Navigates to the worktree directory
4. Starts Claude Code

**Switching to a worktree** (`claude-worktree switch <identifier>`):
1. Navigates to the existing worktree directory
2. Starts Claude Code in that environment

## Development

See `docs/` for development documentation.

## License

MIT