---
title: "First setup: python"
---

## `uv`

- [ ] Install `uv`: [installation page](https://docs.astral.sh/uv/getting-started/installation/)

## `mamba`

- [ ] Install `miniforge`: [installation page](https://github.com/conda-forge/miniforge?tab=readme-ov-file#unix-like-platforms-macos-linux--wsl)

```bash
# Disable auto activation of base environment.
conda config --set auto_activate_base false
```

## `jupyter-lab`

- [ ] Setup an environment with jupyter-lab.

```bash
mamba create -n jupyter-lab
mamba activate jupyter-lab
mamba install jupyterlab

# Test installation with
jupyter-lab
```

Once in `jupyter-lab`:

- [ ] Switch theme to dark.
- [ ] Enable autocompletions.
