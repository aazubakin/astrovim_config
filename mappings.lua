-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<C-t>"] = {
        "<cmd>ToggleTerm<CR>",
        desc = "Toggle Terminal",
      },
    ["<leader>1"] = {
        "<cmd>ToggleTerm 1 direction=vertical size=40<CR>",
        desc = "Open first Terminal",
      },
    ["<leader>2"] = {
        "<cmd>ToggleTerm 2 direction=vertical<CR>",
        desc = "Open second Terminal",
      },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>y"] = { [["+y]] },
    ["<leader>Y"] = { [["+Y]] }
  },
  t = {
    ["<C-t>"] = {
        "<cmd>ToggleTerm<CR>",
        desc = "Toggle Terminal",
      },
    ["<Esc>"] = {
        "<C-\\><C-n>",
        desc = "Terminal Normal Vim Mode",
      },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv"},
    ["K"] = {":m '<-2<CR>gv=gv"},
    ["<leader>y"] = { [["+y]] }
  },
  x = {
    ["<leader>p"] = { [["_dP"]] }
  }
}
