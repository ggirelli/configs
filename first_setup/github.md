# Git and GitHub

- [ ] Create a new authentication token: [GitHub dev settings](https://github.com/settings/tokens)
  - [ ] The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
- [ ] Authenticate with `gh auth login`.
- [ ] Setup global user.

```bash
git config --global user.email "gigi.ga90@gmail.com"
git config --global user.name "Gabriele Girelli"
```

- [ ] Sign your commits.
  - [ ] [Generating a new GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key).
  - [ ] [Telling git about your signing key](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key).
  - [ ] VSC settings: `"git.enableCommitSigning": true`.

```bash
if [ -r ~/.zprofile ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.profile; fi
```
