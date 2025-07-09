# Git and GitHub

- [ ] Setup global user.

```bash
git config --global user.email "gigi.ga90@gmail.com"
git config --global user.name "Gabriele Girelli"
```

- NOTE: if you have private emails blocked on GitHub, you must use a private
  email for command line Git operations instead. See the [GitHub emails settings page](https://github.com/settings/emails).

## Login to GitHub

> Assumes using 1Password and 1Password CLI (`op`), and having GitHub CLI (`gh`) installed.

- [ ] Create a new authentication token: [GitHub dev settings](https://github.com/settings/tokens)

  - [ ] The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
  - [ ] Save it in 1Password.

- [ ] Setup GitHub CLI to authenticate via 1Password following [this guide](https://developer.1password.com/docs/cli/shell-plugins/github/).

## Sign commits

> Assumes using 1Password and 1Password CLI (`op`), and having GitHub CLI (`gh`) installed.

- [ ] Create a new SSH key if not already available.

  - [ ] Store it in 1Password.

- [ ] Setup signing git commits following [this guide](https://developer.1password.com/docs/ssh/git-commit-signing/).
