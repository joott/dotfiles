local Terminal  = require('toggleterm.terminal').Terminal

-- lazygit
local lazygit = Terminal:new({
    cmd = 'lazygit',
    display_name = 'lazygit',
    dir = 'git_dir',
    hidden = true,
    direction = 'float',
    winbar = { enabled = false, },
    float_opts = {
        border = 'rounded',
    }
})

function _lazygit_toggle()
  lazygit:toggle()
end

-- julia
local jlrepl = Terminal:new({
    cmd = 'julia',
    on_open = function()
        local key = vim.api.nvim_replace_termcodes([[<C-\><C-n><C-w><C-p>]], true, false, true)
        vim.api.nvim_feedkeys(key, 'n', false)
        vim.keymap.set('n', '<leader>jr', '<cmd>lua _jlrepl_exec()<CR>', { noremap = true, silent = true })
    end,
    on_close = function()
        vim.keymap.set('n', '<leader>jr', '<Nop>')
    end,
})

function _jlrepl_exec()
    jlrepl:send(string.format('include("%s")', vim.fn.expand('%:p')), true)
end

function _jlrepl_open()
    if not jlrepl:is_open() then
        jlrepl:open()
    end
end

-- repl send
local trim_spaces = true
vim.keymap.set("v", "<space>s", function()
    require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
end)
