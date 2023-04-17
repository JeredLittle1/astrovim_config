# AstroNvim User Configuration Example

<!--toc:start-->
- [AstroNvim User Configuration Example](#astronvim-user-configuration-example)
  - [🛠️ Installation](#🛠️-installation)
      - [Make a backup of your current nvim and shared folder](#make-a-backup-of-your-current-nvim-and-shared-folder)
      - [Clone AstroNvim](#clone-astronvim)
      - [Clone the repository](#clone-the-repository)
      - [Install Pre-requisites](#install-pre-requisites)
      - [Start Neovim](#start-neovim)
<!--toc:end-->


## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```
#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim/lua/user
```

#### Install Pre-requisites
* Brew: https://brew.sh/
* NodeJS
```
brew update
brew install nvm
nvm install 16.0
```
* Github CLI
```
brew install gh
```
* PyEnv (or some sort of Python3 install) https://github.com/pyenv/pyenv#homebrew-in-macos
```
brew install pyenv
```
* Install the JDK (or remove the jdtls from `plugins/mason.lua`)
```
brew install openjdk
```
* LazyGit
```
brew install lazygit
``` 



#### Start Neovim

```shell
nvim
```
