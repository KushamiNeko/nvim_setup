set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

let s:editor_root=expand('~/.config/nvim')

call vundle#rc(s:editor_root . '/bundle')

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


"ncm2

Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'

autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

"setting of completion menu
"set completeopt-=menu
"set completeopt+=menuone
"set completeopt-=longest
"set completeopt+=noselect


"ncm2 completion source

Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-tagprefix'
Plugin 'ncm2/ncm2-path'
Plugin 'ncm2/ncm2-vim'
Plugin 'ncm2/ncm2-go'
Plugin 'ncm2/ncm2-jedi'
Plugin 'ncm2/ncm2-pyclang'
Plugin 'ncm2/ncm2-cssomni'
Plugin 'ncm2/ncm2-tern'

"Plugin 'ncm2/ncm2-tmux'


"snippets

"Plugin 'SirVer/ultisnips'

"Plugin 'honza/vim-snippets'


"c++

"Plugin 'vim-scripts/OmniCppComplete'


"go

Plugin 'fatih/vim-go'


"python

"Plugin 'davidhalter/jedi-vim'

"Plugin 'fisadev/vim-isort'


"html css js

Plugin 'othree/html5.vim'

"Plugin 'othree/csscomplete.vim'

Plugin 'ternjs/tern_for_vim'


"""

"typescript

"Plugin 'mhartington/nvim-typescript'

"Plugin 'leafgarland/typescript-vim'

"Plugin 'HerringtonDarkholme/yats.vim'

"Plugin 'Quramy/tsuquyomi'


"""

"utilities

Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'alvan/vim-closetag'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Plugin 'Chiel92/vim-autoformat'

Plugin 'Yggdroot/indentLine'

"""

"code linter

Plugin 'w0rp/ale'

"""


"colorscheme plugins

Plugin 'colepeters/spacemacs-theme.vim'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'jansenfuller/crayon'


call vundle#end()

filetype plugin indent on



"Open NERDTree Panel
autocmd VimEnter <buffer> execute 'NERDTreeToggle'


"setting of ncm
let g:cm_smart_enable=1
let g:cm_complete_popup_delay=10


"setting of pyclang
let g:ncm2_pyclang#library_path = '/usr/lib64/libclang.so.7'
let g:ncm2_pyclang#args_file_path = ['.clang_complete']


"settings of ale python
let g:ale_linters = {'python': ['mypy', 'flake8', 'pylint']}


"setting of clang complete
"let g:clang_use_library=1
"let g:clang_library_path='/usr/lib64'
"let g:clang_complete_macros=1
"let g:clang_complete_patterns=1
""let g:clang_snippets=1
"let g:clang_close_preview=1


" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


" settings of indentLine
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 255
let g:indentLine_color_gui = '#7F7F7F'
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

set listchars=tab:\¦\ 
set list


"setting of delimitMate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_inside_quotes = 1


"setting of closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml'


"setting of vim-go
let g:go_bin_path = expand('~/programming_tools/go_tools/bin')
let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" setting of tsuquyomi typescript'
"let g:tsuquyomi_disable_quickfix = 1


"setting of autoformat
let g:formatdef_my_html = '"js-beautify --html -A=force -m=2 -s=2"'
let g:formatters_html = ['my_html']
let g:formatdef_my_css = '"js-beautify --css -s=2 -N"'
let g:formatters_css = ['my_css']
let g:formatters_scss = ['my_css']

"yapf style config file at ~/.config/yapf/style
let g:formatters_python = ['yapf']
let g:formatter_yapf_style = 'google'


"set indentation width to 2 or 4 spaces in python mode
"autocmd FileType python setl sw=2 sts=2 et
autocmd FileType python setl sw=4 sts=4 et


autocmd FileType html setl ofu=htmlcomplete#CompleteTags
autocmd FileType html setl completefunc=htmlcomplete#CompleteTags

autocmd FileType xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType xhtml setl completefunc=htmlcomplete#CompleteTags

autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd FileType css setl completefunc=csscomplete#CompleteCSS

autocmd FileType c setl ofu=ccomplete#Complete
"autocmd FileType c setl ofu=ClangComplete
"autocmd FileType c setl completefunc=ClangComplete

"autocmd FileType cpp setl ofu=ClangComplete
"autocmd FileType cpp setl completefunc=ClangComplete


autocmd FileType c autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType cpp autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType python autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType xml autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType html autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType css autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType scss autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType javascript autocmd BufWritePre <buffer> execute 'Autoformat'


"function and key map for refresh syntax highlighting
function SyntaxRefresh()
  syntax sync fromstart
endfunction

command SyntaxRefresh call SyntaxRefresh()

autocmd FileType html autocmd BufEnter <buffer> call SyntaxRefresh()
autocmd FileType css autocmd BufEnter <buffer> call SyntaxRefresh()
autocmd FileType javascript autocmd BufEnter <buffer> call SyntaxRefresh()


"function for ctags generation
"function CTag()
  "let path = expand(getcwd())
  "execute 'silent !ctags -R --sort=yes --fields=+S --c-kinds=+cdefgmpstuvx --language-force=c -f ~/.config/nvim/ctags/working/working.tag ' . path . '/src'
  "execute 'silent !ctags -R --sort=yes --fields=+S --c-kinds=+cdefgmpstuvx --language-force=c -f ~/.config/nvim/ctags/working/general.tag ' . '~/programming_projects/c/general/src'

  "execute 'silent! source tag'
"endfunction

"function CppTag()
  "let path = expand(getcwd())
  "execute 'silent !ctags -R --sort=yes --fields=+iaS --extra=+q --c++-kinds=+cdefgmpstuvx --language-force=c++ -f ~/.config/nvim/ctags/working/working.tag ' . path . '/src'

  "execute 'silent! source tag'
"endfunction


"autocmd FileType c call CTag()
"autocmd FileType cpp call CppTag()

"autocmd FileType c autocmd BufWritePost <buffer> call CTag()
"autocmd FileType cpp autocmd BufWritePost <buffer> call CppTag()


"display line number
set nu


" set line ending always with LF (UNIX Style)
set ff=unix


"setting of tab behavior
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2


set swapfile
set dir=~/programming_tools/nvim/temp
set backupdir=~/programming_tools/nvim/backup


"use true color
if (has('termguicolors'))
  set termguicolors
endif


"set background to dark
set background=dark


"setting of color theme
colorscheme spacemacs-theme

"colorscheme quantum
"let g:airline_theme='quantum'
"let g:quantum_black = 1
"let g:quantum_italics = 1


"setting of gnome terminal
hi Normal guibg=none
hi NonText guibg=none


hi Normal ctermbg=none
hi NonText ctermbg=none


au ColorScheme * hi Normal ctermbg=none guibg=none

