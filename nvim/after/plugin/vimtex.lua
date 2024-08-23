vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_quickfix_open_on_warning = 0
vim.g.vimtex_imaps_enabled = 0
vim.cmd([[
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-shell-escape',
    \}
]])
