# dotfiles

My dotfiles (macOS for now), managed with [chezmoi](https://www.chezmoi.io/).

Includes: zsh, git, tmux, Ghostty, and the Oh My Posh theme.
Neovim config lives in a separate repo: [HiRahmatDev/nvim](https://github.com/HiRahmatDev/nvim).

## Setup

```sh
brew install chezmoi
chezmoi init --apply HiRahmatDev
```

tmux plugins are installed by [TPM](https://github.com/tmux-plugins/tpm): press `prefix + I` inside tmux.
