# Neovim Setup

## On Windows

1.  Install [Neovim](https://neovim.io/)
2.  Install [Nvy](https://github.com/RMichelsen/Nvy/releases)
    by saving `Nvy.exe` in `C:\Program Files\Neovim\bin`
3.  Install [the Cascadia Code font family](https://www.fontmirror.com/cascadia-code)
3.  Clone this repo to `~/AppData/Local/nvim`.
4.  `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/AppData/Local/nvim-data/site/pack/packer/start/packer.nvim`
5.  Open Neovim and run `:PackerSync`
6.  `winget install BurntSushi.ripgrep.MSVC`
7.  Merge `registry/shell.reg`
8.  Add `alias nvim="winpty nvim"` to `~/.bashrc`
9.  Add `alias vim=nvim` to `~/.bashrc`
10. Add a shortcut to `Nvy.exe` to `~/AppData/Roaming/Microsoft/Windows/SendTo`

## On Linux

1. Install [Neovim](https://neovim.io/)
2. Clone this repo to `~/.config/nvim`.
3. `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
4. Open Neovim and run `:PackerSync`
5. `sudo apt-get install ripgrep`
6. Add `alias vim=nvim` to `~/.bashrc`

