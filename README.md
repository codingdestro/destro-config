# Codingdestro Configurations

My Linux configurations for a productive development environment.

Overview

- tmux (tmux/.tmux.conf): custom keybindings, pane resizing, mouse support, and plugins (tpm, powerkit, tmux-resurrect, tmux-continuum). Install TPM at ~/.tmux/plugins/tpm and press prefix+I to install plugins.

- Neovim (nvim/v1): Lua-based Neovim config. Symlink or copy this folder to ~/.config/nvim. Requires plugins managed by the config's lazy setup.

- Ghostty (ghostty/config): terminal theme and font settings (uses "MesloLGL Nerd Font Propo"). Place at ~/.config/ghostty/config.

Quick setup

1. Symlink or copy files to home (e.g., ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf).
2. Install TPM and run prefix+I to install tmux plugins.
3. Ensure Neovim plugins are installed per the config's instructions.

Contributions and tweaks welcome.
