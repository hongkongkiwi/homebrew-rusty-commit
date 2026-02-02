# Homebrew Tap for Rusty Commit

[![rusty-commit](https://img.shields.io/badge/rusty-commit-AI--powered%20commit%20message%20generator-blue)](https://github.com/hongkongkiwi/rusty-commit)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow)](https://opensource.org/licenses/MIT)

Official [Homebrew](https://brew.sh/) tap for [Rusty Commit](https://github.com/hongkongkiwi/rusty-commit) - an AI-powered commit message generator written in Rust.

## What is Rusty Commit?

Rusty Commit (`rco`) is a modern, AI-powered git commit message generator that helps you create meaningful, standardized commit messages following Conventional Commits. It supports 100+ AI providers including:

- **OpenAI** (GPT-4, GPT-4o)
- **Anthropic** (Claude)
- **Google Gemini**
- **Groq**, **Cerebras**, **DeepSeek**
- **Ollama** (local models)
- And 90+ more...

## Install

```bash
# Add the tap
brew tap hongkongkiwi/rusty-commit

# Install rusty-commit
brew install rusty-commit
```

## Quick Start

```bash
# Interactive mode (recommended)
rco

# Dry run to preview
rco --dry-run

# Auto-commit without confirmation
rco -y

# Generate 3 variations
rco -g 3

# With extra context
rco -c "What this change does"
```

## Requirements

- **macOS** (Intel or Apple Silicon) or **Linux**
- [Homebrew](https://brew.sh/) installed
- Git

## Update

```bash
# Update to latest version
brew update
brew upgrade rusty-commit
```

## Uninstall

```bash
brew uninstall rusty-commit
brew untap hongkongkiwi/rusty-commit
```

## Features

- Generates Conventional Commits and GitMoji messages
- Supports 100+ AI providers
- Multi-account support (work/personal)
- Interactive and non-interactive modes
- MCP server integration for AI editors (Cursor, VS Code, Claude Code)

## Binary Architectures

This formula provides prebuilt binaries for:

- **macOS**: x86_64 (Intel) and aarch64 (Apple Silicon)
- **Linux**: x86_64 and aarch64 (musl-based for full compatibility)

## Resources

- [Rusty Commit GitHub](https://github.com/hongkongkiwi/rusty-commit)
- [Rusty Commit Documentation](https://github.com/hongkongkiwi/rusty-commit#readme)
- [Homebrew](https://brew.sh/)
