require('mini.files').setup({
    mappings = {
        close       = '<C-c>',
        go_in       = '<Right>',
        go_in_plus  = '<S-Right>',
        go_out      = '<Left>',
        go_out_plus = '<S-Left>',
    },
})

require('mini.trailspace').setup()
