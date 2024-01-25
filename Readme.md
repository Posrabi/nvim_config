## Setup
- Install vim-plug
- Install nerd font
- Install latest nvim
- Clone this repo and cp it too `~/.config/nvim`
- Open nvim and :PlugInstall
- Restart nvim
- Set true color in term (skip if the color is already right)
- Install LSPs: pyright, biome, lua_ls, tsserver, gopls, zls, clangd

### Debugging

pyright's import errors are highly likely from virtualenv setup. Could
be easily fixed by `pip install pyright` in the virtualenv.
