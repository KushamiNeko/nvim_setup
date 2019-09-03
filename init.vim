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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufEnter * call ncm2#enable_for_buffer()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ncm2 completion source

Plugin 'ncm2/ncm2-bufword'

Plugin 'ncm2/ncm2-tagprefix'

Plugin 'ncm2/ncm2-path'

Plugin 'ncm2/ncm2-vim'

"use custom register source function
"Plugin 'ncm2/ncm2-cssomni'

"use clangd language server instead
"Plugin 'ncm2/ncm2-pyclang'

"use pyls language server instead
"Plugin 'ncm2/ncm2-jedi'

"use gopls language server instead
"Plugin 'ncm2/ncm2-go'

"use javascript typescript language serveer instead
"Plugin 'ncm2/ncm2-tern'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"language server protocol

Plugin 'autozimu/LanguageClient-neovim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"go

Plugin 'fatih/vim-go'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"rust

Plugin 'rust-lang/rust.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"dart

Plugin 'dart-lang/dart-vim-plugin'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"python

Plugin 'fisadev/vim-isort'

"Plugin 'nvie/vim-flake8'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"html css js

Plugin 'othree/html5.vim'

"use javascript typescript language serveer instead
"Plugin 'ternjs/tern_for_vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"typescript
Plugin 'HerringtonDarkholme/yats.vim'

"Plugin 'mhartington/nvim-typescript'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"snippets
"the best snippet engine of the three(snipmate, neosnippet)
Plugin 'ncm2/ncm2-ultisnips'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"utilities

Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'alvan/vim-closetag'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Chiel92/vim-autoformat'

Plugin 'Yggdroot/indentLine'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme plugins

Plugin 'colepeters/spacemacs-theme.vim'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'sainnhe/gruvbox-material'

Plugin 'sainnhe/edge'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call vundle#end()

filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of completion menu
set completeopt=noinsert,menuone,noselect
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Open NERDTree Panel
autocmd VimEnter <buffer> execute 'NERDTreeToggle'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of ncm
let g:cm_smart_enable=1
let g:cm_complete_popup_delay=5
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of isort
let g:vim_isort_python_version = 'python3'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of rust
let g:rustfmt_autosave = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of language server
let g:LanguageClient_serverCommands = {
      \'go': ['gopls'],
      \'dart': ['dart', '/home/neko/programming_tools/dart-sdk/bin/snapshots/analysis_server.dart.snapshot', '--lsp'],
      \'python': ['/home/neko/.local/bin/pyls'],
      \'c': ['ccls'],
      \'cpp': ['clangd'],
      \'rust': ['rustup', 'run', 'stable', 'rls'],
      \'javascript': ['node', '/home/neko/programming_tools/javascript-typescript-langserver/lib/language-server-stdio'],
      \'typescript': ['node', '/home/neko/programming_tools/javascript-typescript-langserver/lib/language-server-stdio'],
      \}

nnoremap <silent> <M-k> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <M-d> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:LanguageClient_useFloatingHover=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set height of preview window
set previewheight=9
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting for closing the preview window
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
nnoremap <silent> <M-j> :call ClosePreview()<CR>

function ClosePreview()
if pumvisible() == 0|pclose|endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of css completion register source
call ncm2#register_source({'name' : 'css',
      \ 'priority': 9,
      \ 'subscope_enable': 1,
      \ 'scope': ['css', 'scss', 'sass', 'less'],
      \ 'mark': 'css',
      \ 'word_pattern': '[\w\-]+',
      \ 'complete_pattern': ':\s*',
      \ 'on_complete': ['ncm2#on_complete#omni',
      \               'csscomplete#CompleteCSS'],
      \ })
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings of ultisnips
" Press tab key to trigger snippet expansion
inoremap <silent> <expr> <tab> ncm2_ultisnips#expand_or("\<tab>", 'n')

"ultisnips
" c-j c-k for moving in snippet
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger  = '<c-k>'
"let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsRemoveSelectModeMappings = 0
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

"let g:indentLine_enabled = 0
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
let g:closetag_filenames = '*.html,*.xhtml,*.xml'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of vim-go
let g:go_bin_path = expand('~/programming_tools/go_tools/bin')
let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_auto_type_info = 1
"let g:go_updatetime = 200
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting of autoformat
let g:formatdef_my_html = '"js-beautify --html -A=force -m=2 -s=2"'
let g:formatters_html = ['my_html']
let g:formatdef_my_css = '"js-beautify --css -s=2 -N"'
let g:formatters_css = ['my_css']
let g:formatters_scss = ['my_css']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"yapf style config file at ~/.config/yapf/style
let g:formatters_python = ['yapf']
let g:formatter_yapf_style = 'pep8'
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"completefunc setup
autocmd FileType html setl ofu=htmlcomplete#CompleteTags
autocmd FileType html setl completefunc=htmlcomplete#CompleteTags

autocmd FileType xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType xhtml setl completefunc=htmlcomplete#CompleteTags

autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd FileType css setl completefunc=csscomplete#CompleteCSS

autocmd FileType c setl ofu=ccomplete#Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autoformat setup
autocmd FileType dart autocmd BufWritePre <buffer> execute 'DartFmt'

"use manual python autoformat to prevent messy format
"autocmd FileType python autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType python autocmd BufWritePre <buffer> execute 'Isort'

autocmd FileType c autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType cpp autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType xml autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType html autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType css autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType scss autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType sass autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType javascript autocmd BufWritePre <buffer> execute 'Autoformat'
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
