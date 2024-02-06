# Open Github Repo

<a href="https://dotfyle.com/plugins/fowlie/open-github-repo">
	<img src="https://dotfyle.com/plugins/fowlie/open-github-repo/shield?style=flat" />
</a>

A NeoVim plugin to quickly open the GitHub page for a plugin.


## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
    "fowlie/open-github-repo",
    ft = "lua", -- might work elsewhere too, but not tested
    config = function()
        require("open-github-repo")
    end,
},
```


## Commands

The plugin provides the user command `:OpenGitHubRepo`.
Invoke it when the cursor is on the name of a repo.

To bind it to a key you can do:

```lua
vim.keymap.set('n', '<leader>gh', '<Cmd>OpenGitHubRepo<CR>')
```
