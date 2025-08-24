# Jujutsu

## Basic config

```bash
jj config set --user user.name "Gabriele Girelli"
# NOTE: if you have private emails blocked on GitHub,
# you must use a private email for command line Git
# operations instead. See the GitHub emails settings
# page: https://github.com/settings/emails
jj config set --user user.email "<email>"
```

## Sign commits via SSH

```bash
jj config set --user signing.behavior own
jj config set --user signing.backend ssh
jj config set --user signing.key "<your-key>"
jj config set --user signing.backends.ssh.program /opt/1Password/op-ssh-sign
```
