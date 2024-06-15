return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd file to Harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Toggle quick navigation' })

      vim.keymap.set('n', '<leader>ha', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', 'leader>hz', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', 'leader>he', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', 'leader>hr', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>hp', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<leader>hn', function()
        harpoon:list():next()
      end)
    end,
  },
}
