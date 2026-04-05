# Neovim Setup

## On Linux

1. Install [Neovim](https://neovim.io/)
2. Clone this repo to `~/.config/nvim`.
3. Open Neovim and approve the vim.pack installations
4. `sudo apt-get install ripgrep`
5. Add `alias vim=nvim` to `~/.bashrc`

## On Windows

1. Install [Neovim](https://neovim.io/)
2. Clone this repo to `~/AppData/Local/nvim`.
3. Open Neovim and approve the vim.pack installations
4. `winget install BurntSushi.ripgrep.MSVC`
5. Merge `registry/shell.reg`
6. Add `alias nvim="winpty nvim"` to `~/.bashrc`
7. Add `alias vim=nvim` to `~/.bashrc`
8. Add a shortcut to `nvim.exe` to `~/AppData/Roaming/Microsoft/Windows/SendTo`

## LSP

For VHDL LSP to work, install `rust_hdl` by using Mason

## Catppuccin Mocha in PowerShell

Open up the settings and click on "Open JSON file" in to bottom left.  Then add
the following colour scheme to the root object:

```json
    "schemes": [ {
        "name": "Catppuccin Mocha",
        "foreground":   "#CDD6F4",
        "background":   "#1E1E2E",
        "cursorColor":  "#CDD6F4",
        "black":        "#000000",
        "brightBlack":  "#666666",
        "red":          "#F38BA8",
        "brightRed":    "#EBA0AC",
        "green":        "#A6E3A1",
        "brightGreen":  "#94E2D5",
        "yellow":       "#FAB387",
        "brightYellow": "#F9E2AF",
        "blue":         "#11A8CD",
        "brightBlue":   "#29B8DB",
        "cyan":         "#89DCEB",
        "brightCyan":   "#74C7EC",
        "purple":       "#89B4FA",
        "brightPurple": "#B4BEFE",
        "white":        "#6C7086",
        "brightWhite":  "#CDD6F4",
        "selectionBackground": "#45475A"
    } ],
```

