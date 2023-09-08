
-- , config = function() require'plugins.dap' end }
local legendary = require'legendary'
local dap = require'dap'
local dap_python = require'dap-python'

dap_python.setup()

require'nvim-dap-virtual-text'.setup()

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='🟡', texthl='', linehl='', numhl=''})

legendary.bind_keymaps {
    { '<Leader>dr', dap.continue, description = 'Run debug' },
    { '<F5>', dap.continue, description = 'Run debug' },
    { '<Leader>db', dap.toggle_breakpoint, description = 'Toggle breakpoint' },
    { '<Leader>b', dap.toggle_breakpoint, description = 'Toggle breakpoint' },
    { '<Leader>dc', function() dap.toggle_breakpoint(vim.fn.input('Breakpoint condition: ')) end },
    { '<Leader>B', function() dap.toggle_breakpoint(vim.fn.input('Breakpoint condition: ')) end },
    { '<F10>', dap.step_over },
    { '<F11>', dap.step_into },
    { '<F12>', dap.step_out },
    { '<Leader>ds', dap.repl.open },
    { '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end },
}

