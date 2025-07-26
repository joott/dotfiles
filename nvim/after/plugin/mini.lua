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
require('mini.move').setup({
    mappings = {
        left = '<M-Left>',
        right = '<M-Right>',
        down = '<M-Down>',
        up = '<M-Up>',

        line_left = '<M-Left>',
        line_right = '<M-Right>',
        line_down = '<M-Down>',
        line_up = '<M-Up>',
    },
})
