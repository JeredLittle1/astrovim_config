# AstroNvim User Configuration Example

<!--toc:start-->

- [AstroNvim User Configuration Example](#astronvim-user-configuration-example)

## 🛠️ Installation

### Make a backup of your current nvim and shared folder

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

- Note: See `pre_install.sh` for a pre-install script to install all below packages

- Brew: <https://brew.sh/>
- NodeJS

```shell
brew update
brew install nvm
nvm install 16.0
```

- Github CLI

```shell
brew install gh
```

- PyEnv (or some sort of Python3 install) <https://github.com/pyenv/pyenv#homebrew-in-macos>

```shell
brew install pyenv
```

- Install the JDK (or remove the jdtls from `plugins/mason.lua`)

```shell
brew install openjdk
```

- LazyGit

```shell
brew install lazygit
```

- Ripgrep

```shell
brew install ripgrep
```

#### Start Neovim

```shell
nvim
```
