# Python setup

- [ ] Install `mamba/miniforge`: [installation page](https://github.com/conda-forge/miniforge?tab=readme-ov-file#unix-like-platforms-macos-linux--wsl)

  - [ ] `conda config --set auto_activate_base false`

- [ ] Install `uv`: [repo](https://github.com/astral-sh/uv)

## Jupyter-Lab

- [ ] Install jupyter-lab in a reserved environment.

```bash
mamba create -n jupyter-lab
mamba activate jupyter-lab
mamba install jupyterlab
```

- [ ] Change JupyterLab theme via GUI.
- [ ] After following [R's setup](/first_setup/r.html),
      you can also add the R kernel: [installation page](https://irkernel.github.io/installation/)
