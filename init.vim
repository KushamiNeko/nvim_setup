set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

let s:editor_root=expand("~/.config/nvim")

call vundle#rc(s:editor_root . '/bundle')

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/deoplete.nvim'

Plugin 'Shougo/vimproc.vim'

Plugin 'roxma/nvim-completion-manager'

Plugin 'roxma/ncm-clang'

"Plugin 'Rip-Rip/clang_complete'

Plugin 'vim-scripts/OmniCppComplete'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'fatih/vim-go'

Plugin 'davidhalter/jedi-vim'

Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'leafgarland/typescript-vim'

Plugin 'Quramy/tsuquyomi'

Plugin 'Quramy/vim-js-pretty-template'

Plugin 'othree/csscomplete.vim'

Plugin 'jason0x43/vim-js-indent'

Plugin 'Chiel92/vim-autoformat'

Plugin 'ternjs/tern_for_vim'

Plugin 'alvan/vim-closetag'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-syntastic/syntastic'

Plugin 'tpope/vim-surround'

Plugin 'dart-lang/dart-vim-plugin'

"colorscheme plugins

Plugin 'colepeters/spacemacs-theme.vim'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'jansenfuller/crayon'

call vundle#end()

filetype plugin indent on


"setting of completion menu
"set completeopt-=menu
"set completeopt+=menuone
"set completeopt-=longest
"set completeopt+=noselect


let g:cm_smart_enable=1


"start deoplete
let g:deoplete#enable_at_startup = 0
let g:deoplete#auto_complete_delay=50
let g:deoplete#omni_patterns = {'go': '[a-z0-9.]\{2,}', 'python': '[a-z0-9.]\{2,}', 'typescript': '[a-z0-9.]\{2,}'}


let g:cm_complete_popup_delay=10


au User CmSetup call cm#register_source({
      \ 'name' : 'cm-ts',
      \ 'priority': 0,
      \ 'scoping': 1,
      \ 'scopes': ['typescript'],
      \ 'abbreviation': 'ts',
      \ 'word_pattern': '[a-z0-9.]+',
      \ 'cm_refresh_patterns':['[a-z0-9.]+'],
      \ 'cm_refresh': {'omnifunc': 'tsuquyomi#complete'},
      \ })


"function for disable deoplete
function! DisableDeoplete()
  let b:deoplete_disable_auto_complete=1
endfunction

function! EnableNCM()
  let g:cm_smart_enable=1
endfunction


"autocmd FileType c call DisableDeoplete()
"autocmd FileType cpp call DisableDeoplete()
"autocmd FileType python call DisableDeoplete()

"autocmd FileType c call EnableNCM()
"autocmd FileType cpp call EnableNCM()


"setting of clang complete
"let g:clang_use_library=1
"let g:clang_library_path='/usr/lib64'
"let g:clang_complete_macros=1
"let g:clang_complete_patterns=1
""let g:clang_snippets=1
"let g:clang_close_preview=1


"omniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


"function for ctags generation
function CTag()
  let path = expand(getcwd())
  execute 'silent! ctags -R --sort=yes --fields=+S --c-kinds=+cdefgmpstuvx --language-force=c -f ~/.config/nvim/ctags/working/working.tag ' . path . '/src'
  "execute 'silent! ctags -R --sort=yes --fields=+S --c-kinds=+cdefgmpstuvx --language-force=c -f ~/.vim/ctags/working/general.tag ' . '~/programming_projects/c/general/src'

  execute 'silent! source tag'
endfunction

function CppTag()
  let path = expand(getcwd())
  execute 'silent !ctags -R --sort=yes --fields=+iaS --extra=+q --c++-kinds=+cdefgmpstuvx --language-force=c++ -f ~/.config/nvim/ctags/working/working.tag ' . path . '/src'

  execute 'silent! source tag'
endfunction


"setting of delimitMate
let g:delimitMate_matchpairs = "(:),[:],{:}"
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_inside_quotes = 1


let g:closetag_filenames = "*.html,*.xhtml,*.xml"


"setting of vim-go
let g:go_bin_path = "/home/onionhuang/programming_tools/go_tools/bin"
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


"setting of jedi-vim
let g:jedi#force_py_version = 3


" setting of tsuquyomi typescript'
let g:tsuquyomi_disable_quickfix = 1


"setting of syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
      \ "mode": "passive",
      \ "active_filetypes": ["html", "css", "javascript", "typescript", "python"],
      \ "passive_filetypes": []}
"'passive_filetypes': ['c', 'cpp', 'go']

let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_cpp_checkers = ['clang_check']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E111,E121,E114,E501,E125'
let g:syntastic_typescript_checkers = ['tsuquyomi']

let g:syntastic_html_checkers = ['jshint']
let g:syntastic_css_checkers = ['jshint', 'tidy']
let g:syntastic_javascript_checkers = ['jshint', 'tidy']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_dart_checkers = ['dartanalyzer']

"let g:syntastic_quiet_messages = {'level':  'warning', 'type': 'syntax'}

"setting of autoformat
let g:formatdef_my_html = '"js-beautify --html -A=force -m=1 -s=2"'
let g:formatters_html = ['my_html']
let g:formatdef_my_css = '"js-beautify --css -s=2 -N"'
let g:formatters_css = ['my_css']
let g:formatters_scss = ['my_css']

"yapf style config file at ~/.config/yapf/style
let g:formatdef_my_python = '"yapf"'
let g:formatters_python = ['my_python']

"set indentation width to 2 spaces in python mode
au FileType python setl sw=2 sts=2 et


autocmd FileType php setl ofu=phpcomplete#CompletePHP
autocmd FileType ruby setl ofu=rubycomplete#Complete
autocmd FileType eruby setl ofu=rubycomplete#Complete

autocmd FileType html setl ofu=htmlcomplete#CompleteTags
autocmd FileType html setl completefunc=htmlcomplete#CompleteTags

autocmd FileType xhtml setl ofu=htmlcomplete#CompleteTags
autocmd FileType xhtml setl completefunc=htmlcomplete#CompleteTags

autocmd FileType css setl ofu=csscomplete#CompleteCSS
autocmd FileType css setl completefunc=csscomplete#CompleteCSS

"autocmd FileType c setl ofu=ccomplete#Complete
"autocmd FileType c setl ofu=ClangComplete
"autocmd FileType c setl completefunc=ClangComplete

"autocmd FileType cpp setl ofu=ClangComplete
"autocmd FileType cpp setl completefunc=ClangComplete


"Open NERDTree Panel
autocmd VimEnter <buffer> execute 'NERDTreeToggle'


autocmd FileType c autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType cpp autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType python autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType xml autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType html autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType css autocmd BufWritePre <buffer> execute 'Autoformat'
autocmd FileType javascript autocmd BufWritePre <buffer> execute 'Autoformat'

autocmd FileType dart autocmd BufWritePre <buffer> execute 'DartFmt'

autocmd FileType c call CTag()
autocmd FileType cpp call CppTag()

autocmd FileType c autocmd BufWritePost <buffer> call CTag()
autocmd FileType cpp autocmd BufWritePost <buffer> call CppTag()


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
if (has("termguicolors"))
  set termguicolors
endif


"set background to dark
set background=dark


"setting of color theme
"colorscheme quantum
"let g:airline_theme='quantum'
"let g:quantum_black = 1
"let g:quantum_italics = 1

colorscheme spacemacs-theme


"setting of gnome terminal
hi Normal guibg=none
hi NonText guibg=none


hi Normal ctermbg=none
hi NonText ctermbg=none


au ColorScheme * hi Normal ctermbg=none guibg=none

