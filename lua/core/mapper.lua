function map(mappings)
  for _, v in ipairs(mappings.mappings) do
    vim.keymap.set(v[1], v[2], v[3], { desc = v[4], noremap = true })
  end
end
