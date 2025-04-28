" Luca Theme
" A simple dark theme based on Lua highlighting

if exists('g:colors_name')
  highlight clear
endif

set background=dark
let g:colors_name='luca'

" This is a Vim colorscheme file that loads its highlights from Lua
" The actual highlighting is done in the Lua setup function
lua << EOF
  local colors_path = vim.fn.stdpath("config") .. "/lua/plugins/luca.lua"
  local ok, theme = pcall(require, "plugins.luca")
  if ok and theme[1] and theme[1].config then
    theme[1].config()
  end
EOF
