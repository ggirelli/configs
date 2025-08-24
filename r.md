---
title: "First setup: R"
---

First, install `r` if not already available:

```bash
sudo apt install r-base cmake
```

Finally, install the following packages from within R:

```R
install.packages(c(
    "ggplot2", "cowplot", "ggpubr",
    "data.table", "virids", "cowplot",
    "pbapply"
))
```

- [ ] If you have installed `jupyter-lab`, add support for an R kernel by following these instructions: [R kernel page](https://irkernel.github.io/installation/)
  - NOTE: you need to be in the correct `mamba` environment for the kernel setup to succeed.
