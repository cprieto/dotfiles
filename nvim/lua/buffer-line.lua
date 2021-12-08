require'bufferline'.setup {
  options = {
    diagnostics = "coc",
    numbers = function(opts)
      return string.format('%s', opts.raise(opts.id))
    end,
    separator_style = "thick",
    offsets = {{filetype = "NvimTree", text = "Explorer" }},
  }
}
