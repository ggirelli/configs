# Python setup

- [ ] Install basic workflow packages.

``` bash
sudo apt-get install python3 python3-venv python3-pip
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pip install black pytest vulture mypy pre-commit
```

- [ ] Install Miniconda: [installation page](https://docs.conda.io/en/latest/miniconda.html#linux-installers)
  - [ ] Remember to disable automatic conda `base` activation.
  - [ ] Update conda with `conda update -n base -c defaults conda`.

- [ ] Install jupyter-lab in a reserved environment.

```bash
conda create -n jupyter-lab
conda activate jupyter-lab
conda install pip
pip install jupyterlab
```

- [ ] Change JupyterLab theme via GUI.

- [ ] Install `poetry` by running their [one-line installer](https://python-poetry.org/docs/#osx--linux--bashonwindows-install-instructions).
