# Jujutsu

## Sign commits via SSH

```bash
jj config set --user signing.behavior own
jj config set --user signing.backend ssh
jj config set --user signing.key "<your-key>"
jj config set --user signing.backends.ssh.program /opt/1Password/op-ssh-sign
```
