local status, nvim_tree = pcall(require, 'nvim-tree')

if not status then
  vim.notify('Not found nvim-tree', vim.log.levels.WARN)
  return
end

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

nvim_tree.setup({
  -- for project change
  respect_buf_cwd = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  actions = {
    open_file = {
      -- 打开文件时关闭
      quit_on_open = true,
    },
  },
  view = {
    mappings = {
      list = {
        { key = 'x', action = 'close_node' },
      },
    },
  },
  ui = {
    confirm = {
      remove = false,
    },
  },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
