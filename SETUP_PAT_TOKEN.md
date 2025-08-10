# Setting up HOMEBREW_TAP_TOKEN

This guide walks you through creating a Personal Access Token (PAT) and adding it to your rusty-commit repository.

## Step 1: Create a Personal Access Token

1. **Go to GitHub Settings**
   - Click your profile picture in the top-right corner
   - Select **Settings** from the dropdown
   - Direct link: https://github.com/settings/profile

2. **Navigate to Developer Settings**
   - Scroll down to the bottom of the left sidebar
   - Click **Developer settings**
   - Direct link: https://github.com/settings/apps

3. **Create a Personal Access Token**
   - Click **Personal access tokens** → **Tokens (classic)**
   - Direct link: https://github.com/settings/tokens
   - Click **Generate new token** → **Generate new token (classic)**

4. **Configure the Token**
   - **Note**: `Homebrew Tap Auto-Update for rusty-commit`
   - **Expiration**: Choose 90 days (recommended) or custom
   - **Select scopes**: ✅ Check **`repo`** (Full control of private repositories)
     - This automatically selects:
       - repo:status
       - repo_deployment
       - public_repo
       - repo:invite
       - security_events

5. **Generate and Copy**
   - Click **Generate token** at the bottom
   - ⚠️ **IMPORTANT**: Copy the token NOW! You won't see it again!
   - It will look like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

## Step 2: Add Token to rusty-commit Repository

1. **Go to rusty-commit Repository Settings**
   - Navigate to: https://github.com/hongkongkiwi/rusty-commit
   - Click **Settings** tab (you need admin access)

2. **Add the Secret**
   - In the left sidebar, click **Secrets and variables** → **Actions**
   - Direct link: https://github.com/hongkongkiwi/rusty-commit/settings/secrets/actions
   - Click **New repository secret**

3. **Configure the Secret**
   - **Name**: `HOMEBREW_TAP_TOKEN` (must be EXACTLY this)
   - **Secret**: Paste your PAT token (ghp_xxxxx...)
   - Click **Add secret**

## Step 3: Verify Setup

1. **Check the Secret is Added**
   - You should see `HOMEBREW_TAP_TOKEN` in the repository secrets list
   - It will show as `Updated just now`

2. **Test the Workflow**
   - Create a new release in rusty-commit
   - Check the Actions tab to see if the "Notify Homebrew Tap" workflow runs
   - Check homebrew-rusty-commit for a new PR

## Alternative: Using Fine-grained Personal Access Token (More Secure)

For better security, use a fine-grained token instead:

1. **Create Fine-grained Token**
   - Go to: https://github.com/settings/personal-access-tokens/new
   - **Token name**: `Homebrew Tap Auto-Update`
   - **Expiration**: 90 days
   - **Repository access**: Select **Selected repositories**
     - Add: `hongkongkiwi/homebrew-rusty-commit`

2. **Set Repository Permissions**
   - **Actions**: Read and Write
   - **Contents**: Read and Write  
   - **Metadata**: Read (automatically selected)
   - **Pull requests**: Write

3. **Generate and Use**
   - Click **Generate token**
   - Copy and add to rusty-commit as described above

## Troubleshooting

### Token Not Working?
- Ensure the token has `repo` scope (for classic) or correct permissions (for fine-grained)
- Check the secret name is exactly `HOMEBREW_TAP_TOKEN`
- Verify the token hasn't expired

### Workflow Not Triggering?
- Check the workflow file exists at `.github/workflows/notify-homebrew.yml` in rusty-commit
- Look at the Actions tab for any error messages
- Ensure you have the correct permissions on both repositories

### Need to Rotate Token?
1. Create a new PAT following steps above
2. Update the secret in rusty-commit (it will overwrite the old one)
3. Delete the old PAT from your GitHub settings

## Security Notes

- 🔒 Never commit the token to any repository
- 🔄 Set a reminder to rotate the token before expiration
- 🗑️ Delete old tokens after rotation
- 👤 Consider using a bot account for production use