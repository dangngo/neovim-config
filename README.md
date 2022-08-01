# Neovim Config

Neovim config using Lua. Heavily inspired by [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)

## Prerequisites

* [Neovim >= v0.7.x](https://github.com/neovim/neovim/wiki/Installing-Neovim).
* [Ripgrep](https://github.com/BurntSushi/ripgrep)

```term
brew install ripgrep
```
* One of [Nerd Fonts](https://www.nerdfonts.com/font-downloads) or any fonts with icons

## Installation

1. Make a backup of your current `nvim` config if necessary:

```term
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Clone this repo to the `${HOME}/.config/nvim` directory:

```term
git clone https://github.com/dangngo/neovim-config.git ~/.config/nvim
```

3. Run `nvim` and wait for plugins to be installed

## Keybindings

### Basics

| Key Binding | Action                          |
| ----------- | ------------------------------- |
| SPC SPC     | Find files in current directory |
| SPC TAB     | List opened buffers             |
| TAB         | Switch between opened buffers   |
| SPC e t     | Open file explorer (nvim-tree)  |
| SPC f       | Search text in current buffer   |
| SPC /       | Search text in current project  |
| SPC p       | List projects                   |
| SPC q       | Close buffer                    |
| SPC w       | Quit                            |

### Windows

| Key Binding    | Action             |
|----------------|--------------------|
| Ctrl <h,j,k,l> | Switch window      |
| Ctrl-w v       | Split vertically   |
| Ctrl-w s       | Split horizontally |
| Ctrl-w q       | Delete window      |
| Ctrl-w >       | Increase width     |
| Ctrl-w <       | Decrease width     |
| Ctrl-w +       | Increase height    |
| Ctrl-w -       | Decrease height    |
| Ctrl-w =       | Reset window size  |

### LSP

| Key Binding | Action                                 |
|-------------|----------------------------------------|
| gd          | Go to definition                       |
| gD          | Go to declaration                      |
| K           | Hover (info about symbol under cursor) |
| gl          | Show current diagnostic in float       |
| SPC l j     | Go to next diagnostic                  |
| SPC l k     | Go to previous diagnostic              |
| SPC l r     | Rename symbol                          |
| SPC l R     | Find references of symbol              |

### Terminal

| Key Binding | Action                     |
|-------------|----------------------------|
| SPC \       | Toggle floating terminal   |
| SPC T h     | Toggle horizontal terminal |
| SPC T v     | Toggle vertical terminal   |

## References
(Or where I stole some configs..)

* [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)
* [brainfucksec/neovim-lua](https://github.com/brainfucksec/neovim-lua)
* [NvChad](https://github.com/NvChad/NvChad)

