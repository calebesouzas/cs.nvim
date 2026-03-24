function open_scratchpad()
  -- Create the buffer
  -- listed: false (doesn't appear in buffer lists)
  -- scratch: true (temporary buffer, doesn't need saving)
  local buffer = vim.api.nvim_create_buf(false, true)

  -- Configure window dimensions
  local width  = math.ceil(vim.o.columns * 0.8)
  local height = math.ceil(vim.o.lines * 0.8)
  local row    = math.ceil((vim.o.lines - height) / 2)
  local col    = math.ceil((vim.o.columns - width) / 2)

  -- Create window
  -- nvim_open_win(buffer, enter, config)
  local window = vim.api.nvim_open_win(buffer, true, {
    relative = "editor",
    width    = width,
    height   = height,
    row      = row,
    col      = col,
    style    = "minimal", -- removes line numbers and status line
    border   = "rounded", -- options: single, double, shadow, rounded
  })

  vim.keymap.set('n', 'q', "<cmd>close<cr>", { buffer = buffer, silent = true })
end

-- map '<leader>cp' to open it
vim.keymap.set('n', "<leader>cp", function() open_scratchpad() end)
