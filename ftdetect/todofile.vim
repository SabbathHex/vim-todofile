autocmd BufRead,BufNewFile *.todofile set filetype=todofile
" UI section
autocmd FileType todofile
			\ hi Visual term=reverse ctermbg=LightGreen ctermfg=Black guibg=LightYellow |
			\ set laststatus=0 |
			\ set number norelativenumber |
			\ set noshowmode |
			\ set noruler |
			\ set noshowcmd |
			\ set nolinebreak |
			\ set nowrap
" Premade marks section
autocmd BufRead *.todofile
			\ silent! $?# TODO?mark t |
			\ silent! $?# DONE?mark d |
			\ silent! $?# FOLLOWUP?mark f
" ctrl+F = move to followup
autocmd FileType todofile
			\ vnoremap <C-F> ^d'fp <C-o> |
			\ nnoremap <C-F> ^ dd'fp <C-o>
" ctrl+D = move to Done
autocmd FileType todofile
			\ vnoremap <C-D> ^d'dp <C-o> |
			\ nnoremap <C-D> ^dd'dp <C-o>
" ctrl+T = move to Todo
autocmd FileType todofile
			\ vnoremap <C-T> ^d'tp <C-o> |
			\ nnoremap <C-T> ^dd'tp <C-o>
