" ------------------------ "
" cokeline plugin settings "
" ------------------------ "

let s:plugin_name = 'cokeline.nvim'


if has_key(g:plugs, s:plugin_name) && stridx(&rtp, g:plugs[s:plugin_name].dir)

  augroup plugin_cokeline
" TODO get it working
"lua << EOF
"local get_hex = require('cokeline/utils').get_hex
"require('cokeline').setup({
  "default_hl = {
    "focused = {
      "fg = get_hex('Normal', 'fg'),
      "bg = get_hex('ColorColumn', 'bg'),
    "},
    "unfocused = {
      "fg = get_hex('Comment', 'fg'),
      "bg = get_hex('ColorColumn', 'bg'),
    "},
  "},

  "components = {
    "{
      "text = '｜',
      "hl = {
        "fg = function(buffer)
          "return
            "buffer.is_modified
            "and vim.g.terminal_color_3 -- yellow
             "or vim.g.terminal_color_2 -- green
        "end
      "},
    "},
    "{
      "text = function(buffer) return buffer.devicon.icon .. ' ' end,
      "hl = {
        "fg = function(buffer) return buffer.devicon.color end,
      "},
    "},
    "{
      "text = function(buffer) return buffer.index .. ': ' end,
    "},
    "{
      "text = function(buffer) return buffer.unique_prefix end,
      "hl = {
        "fg = get_hex('Comment', 'fg'),
        "style = 'italic',
      "},
    "},
    "{
      "text = function(buffer) return buffer.filename .. ' ' end,
      "hl = {
        "style = function(buffer) return buffer.is_focused and 'bold' or nil end,
      "},
    "},
    "{
      "text = ' ',
    "},
  "},
"})
"EOF
  augroup END

endif

