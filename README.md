# dotfiles

Personal dotfiles for my dev environment, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's included

| Tool | Config location |
|------|----------------|
| Neovim (LazyVim) | `~/.config/nvim` |
| tmux | `~/.tmux.conf` |
| Ghostty | `~/.config/ghostty/config` |
| Zsh | `~/.zshrc` |
| oh-my-zsh (custom) | `~/.oh-my-zsh/custom` |
| tmuxifier (layouts) | `~/.tmuxifier/layouts` |

## Fresh machine setup

### 1. Install dependencies

```bash
# core tools
sudo apt install git stow tmux zsh zoxide

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TPM (tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

# ghostty — download from https://ghostty.org

# neovim — download latest from https://github.com/neovim/neovim/releases
```

### 2. Clone dotfiles

```bash
git clone git@github.com:ranjitbudhathoki/dotfiles.git ~/dotfiles
```

### 3. Stow configs

```bash
cd ~/dotfiles
stow nvim
stow tmux
stow ghostty
stow zsh
stow oh-my-zsh
stow tmuxifier
```

> If any config files already exist at the target location, remove or back them up first:
> ```bash
> mv ~/.zshrc ~/.zshrc.bak
> mv ~/.config/nvim ~/.config/nvim.bak
> # etc.
> ```

### 4. Install tmux plugins

Start tmux and press `Ctrl-b I` to install all plugins:
- tmux-resurrect
- tmux-continuum
- vim-tmux-navigator

### 5. Install nvim plugins

Open nvim and run:

```
:Lazy sync
```

### 6. Start tmuxifier sessions

```bash
tmuxifier load teams
tmuxifier load attendance
tmuxifier load core
```

## Tmux shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl-b s` | Switch between sessions |
| `Ctrl-b c` | New window |
| `Ctrl-b %` | Split vertical |
| `Ctrl-b "` | Split horizontal |
| `Ctrl-b z` | Zoom pane |
| `Ctrl-b Ctrl-s` | Save session (resurrect) |
| `Ctrl-b Ctrl-r` | Restore session (resurrect) |
| `Ctrl-h/j/k/l` | Navigate panes (vim-tmux-navigator) |

## Neovim shortcuts

| Shortcut | Action |
|----------|--------|
| `<leader>ff` | Find files |
| `<leader>gg` | Lazygit |
| `<leader>gd` | Diff view |
| `<leader>xx` | Trouble diagnostics |
| `]d` / `[d` | Next/prev diagnostic |
| `]h` / `[h` | Next/prev git hunk |
