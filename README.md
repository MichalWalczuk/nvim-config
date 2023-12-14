# Minimalistic NeoVim config.
Mainly so I don't forget how to setup stuff.

Commands recommended to run after installation:
`:checkhealth lazy`

### Clean start:
```
rm -rf ~/.local/share/nvim
```
```
rm -rf ~/.config/nvim
```

### Adding plugins:
- Add plugin in lua/mike/lazy.lua
- Make sure to require it in plugin directory lua/mike/init.lua, e.g.
```lua
require("mike.remap")
require("mike.lazy")
require("mike.telescope")
require("mike.whichkey")
require("mike.lazygit")
```

### Todos: 
- [x] Telescope
- [x] Which-key
- [ ] LSP
- [ ] Buffer navigation
- [ ] Treesitter
- [ ] Formatter
- [ ] DAP Debugger
