
map <F10> :NERDTreeToggle<CR>
" " " 设置宽度
let NERDTreeWinSize=25

nmap <F9> :TagbarToggle<CR>
let g:tagbar_width=25



:set incsearch   
:set hlsearch 
:set ignorecase
:syntax on
:set list lcs=tab:\|\ 
:set cursorline
:set nu
:set autowrite
:set mouse+=a

map <C-n> :cnext<CR>
map <c-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build) 
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
" cttl s save
nmap <C-S> :wq!<CR>
vmap <C-S> <C-C>:wq!<CR>
imap <C-S> <Esc>:wq!<CR>

nmap <C-Q> :q!<CR>
vmap <C-Q> <C-C>:q!<CR>
imap <C-Q> <Esc>:q!<CR>

nmap <C-W> :w!<CR>
vmap <C-W> <C-C>:w!<CR>
imap <C-W> <Esc>:w!<CR>i

nmap <C-X> :w!<CR>
vmap <C-X> <C-C>:w!<CR>
imap <C-X> <Esc>:w!<CR>i

"nmap <C-B> :!go build<CR>
"vmap <C-B> <C-C>:!go build<CR>
"imap <C-B> <Esc>:!go build<CR>

"nmap <C-R> :!go run .<CR>
"vmap <C-R> <C-C>:!go run .<CR>
"imap <C-R> <Esc>:!go run .<CR>

nmap . :wq!<CR>
nmap , :q!<CR>
"nmap m dgg
"nmap z dG:wq!<CR>
