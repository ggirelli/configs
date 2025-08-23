# Ruby

```bash
# Install rbenv
brew install rbenv

# Initialize it and add it to your shell profile
rbenv init

# !!! NOTE: The following line depends on your shell, I use zsh
# The rbenv init should give you the proper text to append to your shell profile file
echo 'eval "$(rbenv init - zsh)"' | tee -a ~/.zshrc

# Close and re-open the shell

# Verify installation
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Install ruby (change to latest version)
# The RUBY_CONFIGURE_OPTS makes sure you use openssl
# to avoid issues with gems management
RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)" \
  rbenv install 3.4.5
```

## Jekyll

```bash
gem install bundler jekyll
```

To run Jekyll in a folder, the first time you should run `bundle install`. Then, running jekyll just takes:

```bash
bundle exec jekyll serve
```
