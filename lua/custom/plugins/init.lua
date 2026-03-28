-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<C-/>', '<cmd>ToggleTerm<CR>')
vim.keymap.set('t', '<C-/>', '<cmd>ToggleTerm<CR>')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

---@module 'lazy'
---@type LazySpec
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-_>]],
        direction = 'float',
        insert_mappings = true,
        terminal_mappings = true,
      }
    end,
  },
}
