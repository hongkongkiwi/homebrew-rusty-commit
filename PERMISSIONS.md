# GitHub Actions Permissions Guide

## Workflow Permissions

### homebrew-rusty-commit Repository

The `update-formula.yml` workflow requires:
- **contents: write** - To create branches and commit changes
- **pull-requests: write** - To create pull requests

These permissions are already configured in the workflow file.

### rusty-commit Repository

The `notify-homebrew.yml` workflow requires:
- **contents: read** - To read release information (already configured)
- **Repository secret**: `HOMEBREW_TAP_TOKEN` with `repo` scope

## Setting up the Personal Access Token

1. Go to https://github.com/settings/tokens/new
2. Give it a descriptive name: "Homebrew Tap Auto-Update"
3. Set expiration (recommend 90 days with reminder to renew)
4. Select scopes:
   - **repo** (full control of private repositories)
     - This is needed to trigger workflows in the tap repository
5. Click "Generate token"
6. Copy the token immediately (you won't see it again)

## Adding the Token to rusty-commit

1. Navigate to your rusty-commit repository
2. Go to Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Name: `HOMEBREW_TAP_TOKEN`
5. Value: Paste your personal access token
6. Click "Add secret"

## Security Notes

- The PAT should be created by someone with write access to both repositories
- Consider using a fine-grained personal access token for better security:
  - Repository access: Only `hongkongkiwi/homebrew-rusty-commit`
  - Permissions: 
    - Contents: Read and Write
    - Metadata: Read
    - Pull requests: Write
    - Actions: Write (to trigger workflows)
- Rotate the token periodically
- Never commit the token to any repository

## Troubleshooting

If the workflow fails with permission errors:

1. Check that the PAT hasn't expired
2. Verify the PAT has the correct scopes
3. Ensure the secret name is exactly `HOMEBREW_TAP_TOKEN`
4. Check GitHub Actions logs for specific error messages