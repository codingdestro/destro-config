# Neovim Config

## This is the codingdestro's neovim configurations.

## Configuration Overview

#### Language Servers

- Typescript/Javascript `typescript-language-server`
- Tailwind Css `tailwindcss-language-server`
- Go `gopls`
- Ruby `ruby-lsp`
- Rust `rust-analyzer`
- Lua `lua-language-server`
- Python `pyright`
- C/C++ `clangd`

`For Gleam text highlighting use :TSInstall gleam`

#### Formatters

- Typescript/Javascript `prettier` `prettierd`
- Lua `clang-format`
- Python `black`
- C/C++ `clangd`

#### Linters

- Typescript/Javascript `eslint-lsp`

### How to setup in your system

#### Prerequisites

Ensure that you have the following installed:

- Neovim
- Git
- Node.js, npm
- rustup, cargo
- python, pip

#### Installation

```bash
git clone https://github.com/codingdestro/destro-config.get ~/.config/nvim

```

#### Install Language Servers

Typescript/Javascript

```bash

sudo npm i -g typescript-language-server
sudo npm i -g prettier prettier_d_slim
sudo npm i -g eslint
sudo npm i -g @tailwindcss/language-server

```

Lua

```bash
sudo npm i -g lua-language-server
cargo install stylua

```

Golang

```bash

go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install github.com/incu6us/goimports-reviser/v3@latest
go install github.com/segmentio/golines@latest

```

Ruby

```bash
gem install ruby-lsp

```

Rust

```bash
rustup component add rust-analyzer

```

Python

```bash
sudo npm i -g pyright
pip install black
```

C/C++

```bash
sudo apt-get install clangd clang-format
```
