-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.colors")

vim.api.nvim_set_keymap("n", "<leader>n", ":lua OpenNnn()<CR>", { noremap = true, silent = true })

function OpenNnn()
  local file = vim.fn.system("nnn -p")
  file = string.gsub(file, "\n", "") -- remove newline
  if file ~= "" then
    vim.cmd("edit " .. file)
  end
end
