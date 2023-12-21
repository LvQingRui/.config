return {
  "itchyny/calendar.vim",
  init = function()
    vim.api.nvim_exec(
      [[
    augroup calendar-mappings
		autocmd!

		" diamond cursor
		autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
		autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
		autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
		autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
	augroup END
    ]],
      true
    )
  end,
}
