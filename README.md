# Homebrew Tap for Watchfire

Orchestrator for AI coding agents.

## Installation

### GUI (macOS app + CLI)

```bash
brew tap watchfire-io/tap
brew install --cask watchfire-io/tap/watchfire
```

Installs the Watchfire.app and symlinks `watchfire` and `watchfired` CLI binaries.

### CLI only (built from source)

```bash
brew tap watchfire-io/tap
brew install watchfire-io/tap/watchfire
```

Builds `watchfire` (CLI/TUI) and `watchfired` (daemon) from source.

#### Run the daemon as a background service

```bash
brew services start watchfire
```

## More info

- [Watchfire on GitHub](https://github.com/watchfire-io/watchfire)
