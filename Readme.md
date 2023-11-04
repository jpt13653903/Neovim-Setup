# Neovim Setup

## On Windows

1. Install [Neovim](https://neovim.io/)
2. Clone this repo to `~/AppData/Local/nvim`.
3. `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/AppData/Local/nvim-data/site/pack/packer/start/packer.nvim`
4. Open Neovim and run `:PackerSync`
5. Merge `registry/shell.reg`
6. Add `alias nvim="winpty nvim"` to `~/.bashrc`
7. Add `alias vim=nvim` to `~/.bashrc`

## On Linux

1. Install [Neovim](https://neovim.io/)
2. Clone this repo to `~/.config/nvim`.
3. `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
4. Open Neovim and run `:PackerSync`
5. Add `alias vim=nvim` to `~/.bashrc`

