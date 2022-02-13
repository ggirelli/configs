# Python setup

- [ ] Install basic workflow packages.

``` bash
sudo apt-get install python3 python3-venv python3-pip
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
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
