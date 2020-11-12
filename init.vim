set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

let s:editor_root=expand('~/.config/nvim')

call vundle#rc(s:editor_root . '/bundle')

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ncm2

Plugin 'ncm2/ncm2'

Plugin 'roxma/nvim-yarp'

Plugin 'roxma/vim-hug-neovim-rpc'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufEnter * call ncm2#enable_for_buffer()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ncm2 completion source

Plugin 'ncm2/ncm2-bufword'

Plugin 'ncm2/ncm2-tagprefix'

Plugin 'ncm2/ncm2-gtags'

Plugin 'ncm2/ncm2-path'

Plugin 'ncm2/ncm2-vim'

Plugin 'Shougo/neco-vim'

"Plugin 'ncm2/ncm2-syntax'

"Plugin 'Shougo/neco-syntax'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ncm2 completion for programming language

Plugin 'ncm2/ncm2-cssomni'

"use python language server
"Plugin 'ncm2/ncm2-jedi'

"use ccls for c and clangd language server for cpp
"Plugin 'ncm2/ncm2-pyclang'

"use gopls language server 
"Plugin 'ncm2/ncm2-go'

"use typescript language serveer 
"Plugin 'ncm2/ncm2-tern'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"language server protocol

"Plugin 'autozimu/LanguageClient-neovim'

Plugin 'prabirshrestha/async.vim'

Plugin 'prabirshrestha/vim-lsp'

Plugin 'mattn/vim-lsp-settings'

Plugin 'ncm2/ncm2-vim-lsp'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"async linter

Plugin 'dense-analysis/ale'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"go

Plugin 'fatih/vim-go'

Plugin 'sebdah/vim-delve'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"rust

"Plugin 'rust-lang/rust.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"dart

"Plugin 'dart-lang/dart-vim-plugin'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"python

Plugin 'fisadev/vim-isort'

"Plugin 'jpalardy/vim-slime'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"debugger
"
Plugin 'sakhnik/nvim-gdb'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"html css js

Plugin 'othree/html5.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"javascript typescript

Plugin 'pangloss/vim-javascript'

Plugin 'HerringtonDarkholme/yats.vim'

Plugin 'MaxMEllon/vim-jsx-pretty'

"Plugin 'mhartington/nvim-typescript'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"snippets

Plugin 'ncm2/ncm2-ultisnips'

Plugin 'SirVer/ultisnips'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"utilities

Plugin 'kien/ctrlp.vim'

Plugin 'Shougo/echodoc.vim'

Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'alvan/vim-closetag'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Chiel92/vim-autoformat'

Plugin 'Yggdroot/indentLine'

Plugin 'jsfaint/gen_tags.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme plugins

Plugin 'colepeters/spacemacs-theme.vim'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'sainnhe/gruvbox-material'

Plugin 'sainnhe/edge'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()

filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of completion menu
set completeopt=noinsert,menuone,noselect
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Open NERDTree Panel
autocmd VimEnter <buffer> execute 'NERDTreeToggle'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of ncm2
let g:ncm2#complete_delay=0
let g:ncm2#popup_delay=0

let g:ncm2_pyclang#library_path = '/usr/lib64/libclang.so.8'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of ale
"\'c': ['gcc', 'clang', 'clangd', 'clang-tidy', 'clang-check'], 
"\'cpp': ['gcc', 'clang', 'clangd', 'clang-tidy', 'clang-check'], 
"\'go': ['staticcheck', 'golangci-lint', 'golint', 'errcheck'],
"\'python': ['flake8', 'mypy', 'pylint', 'pyright', 'bandit'], 

let g:ale_linters = {
      \'c': [''], 
      \'cpp': [''], 
      \'java': [''], 
      \'python': ['flake8', 'mypy', 'pyright'], 
      \'go': [''],
      \'javascript': [''],
      \'typescript': ['']
      \}

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"simulate ipython cell
"function! ExecuteCell(move, begining)
"  let cl = line('.')
"  let cc = col('.')
"
"  "let pattern = '^#\s*%%\s*$'
"  let pattern = '^#\{30,\}$'
"
"  let sl = search(pattern, 'cbn')
"
"  if a:move
"    let el = search(pattern)
"  else
"    let el = search(pattern, 'n')
"  endif
"
"  "echo sl 
"  "echo el 
"
"  if a:begining
"    call slime#send_range(0, el)
"  else
"    call slime#send_range(sl, el)
"  endif
"
"endfunction
"
"nmap <silent> <Leader>e :call ExecuteCell(v:false, v:false)<CR>
"nmap <silent> <Leader>r :call ExecuteCell(v:true, v:false)<CR>
"nmap <silent> <Leader>a :call ExecuteCell(v:false, v:true)<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings of vim-slime
"let g:slime_target = 'tmux'
"let g:slime_python_ipython = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings of Tagbar
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of isort
let g:vim_isort_python_version = 'python3'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of rust
"let g:rustfmt_autosave = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of dart
"let dart_format_on_save = 1
"let dart_style_guide = 2
"let dart_html_in_string=v:true
"let dart_highlight_types=v:true
"let dart_corelib_highlight=v:true
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of echodoc
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'
"set cmdheight=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of language server

nmap <silent> <M-k> <plug>(lsp-hover)
nmap <silent> <M-a> <plug>(lsp-code-action)
nmap <silent> <M-d> <plug>(lsp-peek-definition)
nmap <silent> <M-s> <plug>(lsp-signature-help)
nmap <silent> <M-c> <plug>(lsp-preview-close)
nmap <silent> <M-r> <plug>(lsp-rename)
nmap <silent> <M-n> <plug>(lsp-next-error)
nmap <silent> <M-p> <plug>(lsp-previous-error)

let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 100

let g:lsp_settings = {
\  'pyls': {
    \'workspace_config': {
      \'configurationSources': ['flake8'],
      \"plugins": {
        \"pyls_mypy": {
          \"enabled": v:true,
          \"live_mode": v:false
        \}
      \}
    \}
  \},
  \'gopls': {
    \'workspace_config': {
      \'usePlaceholders': v:true,
      \'staticcheck': v:true
    \}
  \},
\}

autocmd FileType go autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType go setlocal omnifunc=lsp#complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set height of preview window
set previewheight=10
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of ultisnips
" Press tab key to trigger snippet expansion
inoremap <silent> <expr> <tab> ncm2_ultisnips#expand_or("\<tab>", 'n')

let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger  = '<c-k>'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings of indentLine
let g:indentLine_color_gui = '#7F7F7F'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setings indent lines and tab indentations
"note that there is a space at the end of the listchars
set listchars=tab:\¦\ 
set list

let g:indentLine_fileTypeExclude = ['markdown', 'json']
autocmd FileType json set conceallevel=0
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['¦']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of delimitMate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_inside_quotes = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.tsx'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of vim-go
"let g:go_bin_path = expand('~/programming_tools/go_tools/bin')
let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of autoformat
let g:formatters_xml = ['prettier']
let g:formatters_html = ['prettier']
let g:formatters_xhtml = ['prettier']
let g:formatters_css = ['prettier']
let g:formatters_scss = ['prettier']
let g:formatters_javascript = ['prettier']
let g:formatters_typescript = ['prettier']
let g:formatters_javascriptreact = ['prettier']
let g:formatters_typescriptreact = ['prettier']
let g:formatters_json = ['prettier']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of autoformat for python
let g:formatters_python = ['black']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of autoformat for go
let g:formatters_go = ['goimports']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set indentation width to 2 or 4 spaces in python mode
autocmd FileType python setl sw=4 sts=4 et
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"overwrite file directly when editing dart, html, css, scss and javascript
"files to prevent errors on dart webdev serve
autocmd FileType dart setl nowritebackup
autocmd FileType html setl nowritebackup
autocmd FileType css setl nowritebackup
autocmd FileType scss setl nowritebackup
autocmd FileType javascript setl nowritebackup
autocmd FileType typescript setl nowritebackup
autocmd FileType javascriptreact setl nowritebackup
autocmd FileType typescriptreact setl nowritebackup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"completefunc setup
autocmd FileType html setl ofu=htmlcomplete#CompleteTags
autocmd FileType html setl completefunc=htmlcomplete#CompleteTags

autocmd FileType javascriptreact setl ofu=htmlcomplete#CompleteTags
autocmd FileType typescriptreact setl ofu=htmlcomplete#CompleteTags

autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd FileType css setl completefunc=csscomplete#CompleteCSS

autocmd FileType c setl ofu=ccomplete#Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autoformat setup

"use manual python autoformat to prevent messy format
"autocmd FileType python autocmd BufWritePre <buffer> execute 'Autoformat'
"autocmd FileType python autocmd BufWritePre <buffer> execute 'Isort'

autocmd FileType c autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType cpp autocmd BufWritePre <buffer> execute 'Autoformat'

"autocmd FileType html autocmd BufWritePre <buffer> execute 'Autoformat'

"autocmd FileType css autocmd BufWritePre <buffer> execute 'Autoformat'
"autocmd FileType scss autocmd BufWritePre <buffer> execute 'Autoformat'

"autocmd FileType typescript autocmd BufWritePre <buffer> execute 'Autoformat'
"autocmd FileType javascript autocmd BufWritePre <buffer> execute 'Autoformat'

"autocmd FileType json autocmd BufWritePre <buffer> execute 'Autoformat'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function and key map for refresh syntax highlighting
function SyntaxRefresh()
  syntax sync fromstart
endfunction

command SyntaxRefresh call SyntaxRefresh()

"refresh syntax highlight in html, css, and javascript files to prevent bug
autocmd FileType html autocmd BufEnter <buffer> call SyntaxRefresh()
autocmd FileType css autocmd BufEnter <buffer> call SyntaxRefresh()
autocmd FileType javascript autocmd BufEnter <buffer> call SyntaxRefresh()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"display line number
set nu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set line ending always with LF (UNIX Style)
set ff=unix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of tab behavior
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of swap files and backup files location
set swapfile
set dir=~/programming_tools/nvim/temp
set backupdir=~/programming_tools/nvim/backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use true color
if (has('termguicolors'))
  set termguicolors
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background to dark
set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of color theme
"colorscheme spacemacs-theme
colorscheme edge
"colorscheme gruvbox-material

"colorscheme quantum
"let g:airline_theme='quantum'
"let g:quantum_black = 1
"let g:quantum_italics = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"disabled
"setting of gnome terminal colorscheme
"hi Normal guibg=none
"hi NonText guibg=none


"hi Normal ctermbg=none
"hi NonText ctermbg=none


"au ColorScheme * hi Normal ctermbg=none guibg=none
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
