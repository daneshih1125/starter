vim.defer_fn(function()
  local has_aerial, _ = pcall(require, "aerial")
  if has_aerial then
    vim.cmd("AerialOpen")
    vim.cmd("wincmd p")
  end
end, 100)
