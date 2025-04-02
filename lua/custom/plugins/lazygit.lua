-- nvim v0.8.0
return {
'kdheepak/lazygit.nvim',
lazy = true,
cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
},
-- optional for floating window border decoration
dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
},
-- setting the keybinding for LazyGit with 'keys' is recommended in
-- order to load the plugin when the command is run for the first time
keys = {
    { '<leader>lg', '<cmd>LazyGit<CR>', desc = 'LazyGit' },
    { '<leader>gg', '<cmd>LazyGit<CR>', desc = 'LazyGit (telescope)' },
},
config = function()
    -- Set up telescope integration
    require("telescope").load_extension("lazygit")
    
    -- No setup function needed - the plugin works out of the box
    -- Just configure keymaps to ensure they work correctly
    -- The plugin provides the commands by default, no need to create them manually
end,
}
