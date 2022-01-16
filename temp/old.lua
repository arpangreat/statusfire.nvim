vim.opt.laststatus = 2
vim.opt.statusline = vim.opt.statusline + "buf:%n"
vim.opt.statusline = vim.opt.statusline + " <<"
vim.opt.statusline = vim.opt.statusline + " %f  %*"
vim.opt.statusline = vim.opt.statusline + " >>"
vim.opt.statusline = vim.opt.statusline + " %1* %F"
vim.opt.statusline = vim.opt.statusline + " %m"
vim.opt.statusline = vim.opt.statusline + "  "

vim.api.nvim_exec(
	[[
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
]],
	true
)
vim.opt.statusline = vim.opt.statusline + "%="
vim.opt.statusline = vim.opt.statusline + " <<"
vim.opt.statusline = vim.opt.statusline + " ["
vim.opt.statusline = vim.opt.statusline + " %l:%c"
vim.opt.statusline = vim.opt.statusline + " ] : %L"
vim.opt.statusline = vim.opt.statusline + " >>"

vim.api.nvim_exec(
	[[
hi User1 ctermbg=blue ctermfg=red
hi User2 ctermbg=red ctermfg=blue
]],
	true
)
