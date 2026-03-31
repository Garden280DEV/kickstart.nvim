local g = vim.g
local o = vim.o
local opt = vim.opt

g.mapleader = ' '
g.maplocalleader = ' '

g.have_nerd_font = true

--  For more options, you can see `:help option-list`

o.number = true

o.mouse = 'a'

o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

o.breakindent = true

o.undofile = true

o.ignorecase = true
o.smartcase = true

o.signcolumn = 'yes'

o.updatetime = 250

o.timeoutlen = 300

o.splitright = true
o.splitbelow = true

o.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

o.inccommand = 'split'

o.cursorline = true

o.scrolloff = 10

o.confirm = true

o.expandtab = true
o.shiftwidth = 0
o.tabstop = 4

opt.foldlevelstart = 99
opt.smartindent = false

-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
    update_in_insert = false,
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },

    -- Can switch between these as you prefer
    virtual_text = true, -- Text shows up at the end of the line
    virtual_lines = false, -- Text shows up underneath the line, with virtual lines

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = { float = true },
}
