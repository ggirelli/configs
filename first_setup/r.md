# R setup

First, install `r` if not already available:

```bash
sudo apt install r-base
```

Then, install the requirements:

```bash
sudo apt install cmake
```

Finally, install the following packages from within R:

```R
install.packages(c(
    "ggplot2", "cowplot", "ggpubr",
    "data.table", "virids", "cowplot",
    "pbapply"
))
```
