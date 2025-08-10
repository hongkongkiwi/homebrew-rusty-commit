# Homebrew Tap for Rusty Commit

This is a Homebrew tap for installing [rusty-commit](https://github.com/hongkongkiwi/rusty-commit), a Rust-based git commit message generator using AI.

## Installation

First, add this tap to your Homebrew:

```bash
brew tap hongkongkiwi/rusty-commit
```

Then install rusty-commit:

```bash
brew install rusty-commit
```

## Updating

To update rusty-commit to the latest version:

```bash
brew update
brew upgrade rusty-commit
```

## Uninstallation

To remove rusty-commit:

```bash
brew uninstall rusty-commit
```

To remove the tap:

```bash
brew untap hongkongkiwi/rusty-commit
```

## Development

### Testing the Formula Locally

To test the formula locally before pushing:

```bash
brew install --build-from-source ./Formula/rusty-commit.rb
```

### Updating SHA256 for New Release

To automatically update the formula with the latest release SHA256:

```bash
./update-sha256.sh
```

This script will:
1. Fetch the latest release tag from GitHub
2. Download the tarball and calculate its SHA256
3. Update the formula file automatically

You can also manually calculate the SHA256:

```bash
curl -L https://github.com/hongkongkiwi/rusty-commit/archive/refs/tags/v1.0.1.tar.gz | shasum -a 256
```

## Automatic Updates

This tap supports automatic formula updates when new releases are published in the rusty-commit repository.

### Setup Instructions

1. **Create a Personal Access Token (PAT)**:
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Create a new token with `repo` scope
   - Name it something like `HOMEBREW_TAP_TOKEN`

2. **Add the token to rusty-commit repository**:
   - Go to rusty-commit repo → Settings → Secrets and variables → Actions
   - Add a new repository secret named `HOMEBREW_TAP_TOKEN`
   - Paste your PAT as the value

3. **Add the workflow to rusty-commit repository**:
   - Copy the contents of `rusty-commit-release-workflow.yml` from this repo
   - Create `.github/workflows/notify-homebrew.yml` in your rusty-commit repo
   - Paste the workflow contents

4. **How it works**:
   - When you create a new release in rusty-commit, it triggers the notification workflow
   - The homebrew-rusty-commit tap receives the notification
   - It automatically downloads the release, calculates SHA256, and creates a PR with the updates
   - Review and merge the PR to update the formula

### Manual Update

You can also manually trigger an update:
1. Go to Actions tab in this repository
2. Select "Update Formula" workflow
3. Click "Run workflow"
4. Enter the version tag (e.g., v1.0.0)

## License

The formula and this tap are provided under the same license as the rusty-commit project.