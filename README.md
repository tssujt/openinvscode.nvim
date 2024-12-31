# openinvscode.nvim

A Neovim plugin that opens the current project in Visual Studio Code or other VSCode-like editors (Cursor, Windsurf).

## Requirements

- Neovim >= 0.5.0
- Visual Studio Code (or alternative editor) installed and accessible via command line

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'tssujt/openinvscode.nvim'
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    'tssujt/openinvscode.nvim',
    cmd = 'OpenInVSCode',
    opts = {
        -- configuration options here
    }
}
```

## Configuration

```lua
require('openinvscode').setup({
    editor = "code",
})
```

## Usage

The plugin provides the `:OpenInVSCode` command that opens the current working directory in your configured editor.

You can also create a keybinding in your Neovim configuration:

```lua
vim.keymap.set('n', '<leader>vsc', ':OpenInVSCode<CR>', { silent = true })
```

## Examples

### Using with Cursor:
```lua
require('openinvscode').setup({
    editor = "cursor"
})
```

### Using with Windsurf:
```lua
require('openinvscode').setup({
    editor = "windsurf"
})
```

## License

MIT
