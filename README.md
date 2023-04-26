# Table of Contents

1. [Clone dotfiles and dotvim](#clone-dotfiles-and-dotvim)
1. [Run installer](#run-installer)
1. [Generate symlinks](#generate-symlinks)
1. [Clean up installation](#clean-up-installation)

# Clone dotfiles and dotvim

```bash
echo Clone dotfiles ...
git clone --recursive https://github.com/tanducmai/dotfiles.git ~/.files
echo
echo Clone dotvim ...
git clone --recursive https://github.com/tanducmai/dotvim.git ~/.vim
```

# Run installer

```bash
chmod +x ~/.files/sh/installer
sudo bash ~/.files/sh/installer
```

# Generate symlinks

```bash
ln -sf ~/.files/git/gitconfig ~/.gitconfig
ln -sf ~/.files/bash/bashrc ~/.bashrc
ln -sf ~/.files/bash/bash_login ~/.bash_login
ln -sf ~/.files/bash/bash_logout ~/.bash_logout
ln -sf ~/.files/bash/profile ~/.profile
```

# Clean up installation

```bash
chmod -x ~/.files/sh/installer
```
