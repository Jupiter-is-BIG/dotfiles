local opt = vim.opt

-- misc
opt.iskeyword:append("-")

-- indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line numbers
opt.number = true
-- opt.relativenumber = true

-- line wrapping
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor
opt.cursorline = false

-- visuals
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

vim.cmd("command! Yank w | :!g++ -x c++ -g -O2 -std=gnu++20 -o %:r % -DJUPITER_IS_BIG")
