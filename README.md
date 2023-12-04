# Quality of Life Scripts

1. This script downloads the Centos DVD iso on LX03, sets up the modules to mount and mounts the iso image. Then installs vim, nano and disables other repos

```bash
curl -sL https://github.com/lerobinson-beyondtrust/pmul-qualityoflife-scripts/raw/main/lx03only.sh | bash -s
```
2. This script sets up the Centos repo created in LX03, installs vim and nano, then disables unneeded repos

```bash
curl -sL https://github.com/lerobinson-beyondtrust/pmul-qualityoflife-scripts/raw/main/lx01andlx02.sh | bash -s
```



