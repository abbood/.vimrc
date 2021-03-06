syntax enable
set background=dark

colorscheme Spacegray
let g:spacegray_low_contrast = 1

" https://stackoverflow.com/a/1764336/766570
let mapleader = ","

set termguicolors

set hlsearch
set ignorecase

hi Search cterm=NONE ctermfg=black ctermbg=172

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType sh setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4



"set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

"set shiftwidth=2    " Indents will have a width of 4

"set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoindent

set nocompatible              " be iMproved, required
set number
filetype off                  " required


" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'burnettk/vim-angular'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'w0ng/vim-hybrid'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vim-scripts/DBGp-Remote-Debugger-Interface'
Plugin 'joonty/vdebug'
Plugin 'tpope/vim-unimpaired'
Plugin 'ajh17/Spacegray.vim'
Plugin 'vim-scripts/Conque-Shell'
Bundle 'joonty/vim-do'
Plugin 'Rican7/php-doc-modded'
Plugin 'adoy/vim-php-refactoring-toolbox'



" All of your Plugins must be added before the following line
call vundle#end()            " required



filetype plugin indent on    " required
set tags=./tags,tags;$HOME
set runtimepath^=~/.vim/bundle/ctrlp.vim

set grepprg=grep\ -nriI\ --exclude=tags\ --exclude-dir=vendor

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  let &grepprg = "ag --nogroup --nocolor --ignore wiki --ignore tags --ignore dist -w"

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" above replaced with
" https://vi.stackexchange.com/a/14939/14510
function! Ag(args) abort
  execute "silent! grep!" shellescape(a:args)
  cwindow
  redraw!
endfunction

command -nargs=+ -complete=file Ag call Ag(<q-args>)

" bind \ (backward slash) to grep shortcut
nnoremap \ :Ag<SPACE>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" https://stackoverflow.com/a/42218001/766570
nmap <F8> :TagbarToggle<CR>
nmap <F12> :CtrlP<CR>

nmap <F1> :cclose<CR>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

map <C-j> :FZF<CR>
map <C-f> :Buffers<CR>

" arabic support
map <C-g> :set rightleft<CR>
map <C-h> :set norightleft<CR>

noremap <F9> :vertical botright copen 60<cr>
"noremap <F10> :copen 40<cr>
map <C-1> :copen 40<cr>

" to split under vimrc
" https://vi.stackexchange.com/a/14805/14510
:nnoremap \n :split \| :2winc h<CR>

set splitbelow
set splitright


set clipboard=unnamed

" buffers binding
" http://vim.wikia.com/wiki/Easier_buffer_switching
:nnoremap <F5> :buffers<CR>:buffer<Space>

" jump to definition on vertical split
" https://vi.stackexchange.com/a/14821/14510
:nnoremap <c-b> :vert winc ]<CR>
:nnoremap <leader>-b winc ]<CR>

" vim debugging
" https://ccpalettes.wordpress.com/2013/06/03/remote-debugging-php-with-vim-and-xdebug/
" https://vi.stackexchange.com/questions/14159/how-to-point-xdebug-back-to-vim-on-local-host/14161#14161

" see https://stackoverflow.com/a/8950400/766570
" " PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR>

" debugger
map <C-g> :Breakpoint
map <C-e> :VdebugEval

" to get number of occurences of a string
"https://vi.stackexchange.com/a/15476/14510
nnoremap  S  :%s///gn<LEFT><LEFT><LEFT><LEFT>
