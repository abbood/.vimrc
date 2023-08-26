syntax enable
set background=dark
set encoding=UTF-8


let g:spacegray_low_contrast = 1


colorscheme spacegray

" colorscheme hybrid_material
"colorscheme sonokai
"
"https://github.com/frazrepo/vim-rainbow
let g:rainbow_active = 1

" https://stackoverflow.com/a/1764336/766570
let mapleader = ","

set termguicolors

set hlsearch
set ignorecase

" for some reason Plugin 'memgraph/cypher.vim' fails to autodetect
" the cypher file type, so we do it manually here
" https://stackoverflow.com/a/28117335/766570
au BufNewFile,BufRead *.cypher setfiletype cypher
au BufNewFile,BufRead *.cql setfiletype cypher
au BufNewFile,BufRead *.cyp setfiletype cypher


hi Search cterm=NONE ctermfg=black ctermbg=172

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType sql setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType cs setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType sh setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType kotlin setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType java setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType cucumber setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType swift setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType lua setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType cypher setlocal tabstop=4 softtabstop=4 shiftwidth=4



autocmd FileType php colorscheme gruvbox-material
autocmd FileType java colorscheme gruvbox
autocmd FileType kotlin colorscheme gruvbox
autocmd FileType Swift colorscheme gruvbox
autocmd FileType python colorscheme gruvbox
autocmd FileType ruby colorscheme gruvbox
autocmd FileType shell colorscheme spacegray
"autocmd FileType javascript colorscheme gruvbox-material


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
filetype plugin indent on


let g:ale_emit_conflict_warnings = 0

" to quickly remove errors from ts
" https://github.com/w0rp/ale#faq-disable-linters
 let g:ale_linters_explicit = 1

"let g:ale_linters = {
" \   'javascript': ['eslint'],
"\   'typescript': ['tslint'],
"\   'php': ['php'],
"\}

let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }



" https://github.com/w0rp/ale#faq-disable-linters
" let g:ale_linters_explicit = 1
" In ~/.vim/vimrc, or somewhere similar.

" VUNDLE
" set the runtime path to include Vundle and initialize
"
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" nvmim fzf replacement
" see https://news.ycombinator.com/item?id=27163965
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'

" Plugin 'scrooloose/nerdtree'
" nerdtree has been deprecated, see https://www.reddit.com/r/neovim/comments/qkbx5n/nerdtree_alternative/
Plugin 'nvim-tree/nvim-web-devicons' " optional
Plugin 'nvim-tree/nvim-tree.lua'

Plugin 'burnettk/vim-angular'

" replaced with https://github.com/hrsh7th/nvim-cmp/ 
" Plugin 'vim-scripts/AutoComplPop'

Plugin 'Shougo/vimproc.vim'

Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'w0ng/vim-hybrid'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/DBGp-Remote-Debugger-Interface'
Plugin 'tpope/vim-unimpaired'
Plugin 'ajh17/Spacegray.vim'
"Plugin 'rafamadriz/gruvbox'
"Plugin 'luisiacc/gruvbox-baby'
"Plugin 'ellisonleao/gruvbox.nvim'
"Plugin 'sainnhe/gruvbox-material'
Plugin 'morhetz/gruvbox'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'rebelot/kanagawa.nvim'
Plugin 'sainnhe/everforest'
Plugin 'jnurmine/Zenburn'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'vim-scripts/Conque-Shell'
Bundle 'joonty/vim-do'
Plugin 'Rican7/php-doc-modded'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'dhruvasagar/vim-zoom'
Plugin 'keith/swift.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'udalov/kotlin-vim'
Plugin 'folke/tokyonight.nvim', { 'branch': 'main' }
Plugin 'jacoborus/tender.vim'
" linting
Plugin 'w0rp/ale'
"Plugin 'vim-syntastic/syntastic'
" see https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80
"Plugin 'vim-syntastic/syntastic'
"Plugin 'Townk/vim-autoclose'
"Plugin 'phpvim/phpcd.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Shougo/vimproc'
Plugin 'Quramy/tsuquyomi'
Plugin 'joereynolds/gtags-scope'
Plugin 'sainnhe/sonokai'
Plugin 'cohama/agit.vim'
Plugin 'uiiaoo/java-syntax.vim'
Plugin 'esensar/neovim-kotlin'
Plugin 'mileszs/ack.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'EdenEast/nightfox.nvim'
Plugin 'catppuccin/nvim', { 'as': 'catppuccin' }
Plugin 'nordtheme/vim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'tpope/vim-dadbod',
Plugin 'kristijanhusak/vim-dadbod-ui',
Plugin 'pbogut/vim-dadbod-ssh'
Plugin 'kristijanhusak/vim-dadbod-completion'
Plugin 'flrnd/plastic.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'AndrewRadev/diffurcate.vim'
" Plugin 'pedrohdz/vim-yaml-folds'

" see https://github.com/hrsh7th/nvim-cmp/
Plugin 'wfxr/minimap.vim'
Plugin 'memgraph/cypher.vim'

" nvim debugger
Plugin 'mfussenegger/nvim-dap'
Plugin 'rcarriga/nvim-dap-ui'

Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'github/copilot.vim'

Plugin 'logico/typewriter-vim'

"Plugin 'puremourning/vimspector'


" https://github.com/VonHeikemen/lsp-zero.nvim
" LSP Support
Plugin 'neovim/nvim-lspconfig'             " Required
Plugin 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plugin 'williamboman/mason-lspconfig.nvim' " Optional

Plugin 'lukas-reineke/indent-blankline.nvim'

" Autocompletion Engine
Plugin 'hrsh7th/nvim-cmp'         " Required
Plugin 'hrsh7th/cmp-nvim-lsp'     " Required
Plugin 'hrsh7th/cmp-buffer'       " Optional
Plugin 'hrsh7th/cmp-path'         " Optional
Plugin 'saadparwaiz1/cmp_luasnip' " Optional
Plugin 'hrsh7th/cmp-nvim-lua'     " Optional

" floating window - see open_floating_preview in https://neovim.io/doc/user/lsp.html#vim.lsp.buf.rename()
" https://github.com/SmiteshP/nvim-navbuddy
Plugin 'SmiteshP/nvim-navic'
Plugin 'MunifTanjim/nui.nvim'
Plugin 'SmiteshP/nvim-navbuddy'


"  Snippets
Plugin 'L3MON4D3/LuaSnip'             " Required
Plugin 'rafamadriz/friendly-snippets' " Optional

Plugin 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

" Foi vsnip users.
Plugin 'hrsh7th/cmp-vsnip'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

Plugin 'mortepau/codicons.nvim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-abolish'

Plugin 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plugin 'kkharji/sqlite.lua'
Plugin 'nvim-telescope/telescope-smart-history.nvim'
Plugin 'dahu/bisectly'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set tags=./tags,tags;$HOME
set runtimepath^=~/.vim/bundle/ctrlp.vim

"set grepprg=grep\ -nriI\ --exclude=tags\ --exclude-dir=vendor
" DON'T SET GREP! AG IS WAAAAAAY FASTER!

" The Silver Searcher
" NOTE: you must install this using homebrew: brew install the_silver_searcher 
if executable('ag')
  " Use ag over grep
  "let &grepprg = "ag --ignore newman --ignore tests --ignore tags --ignore public -w"
  let &grepprg = "ag --ignore packages"

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><ENTER>

" see https://vi.stackexchange.com/a/38233/14510
"nnoremap <silent> K :let old_iskeyword = &iskeyword<CR>
    "\:set iskeyword+=-<CR>
    "\:grep! "\b<C-R><C-W>\b"<CR>
    "\:let &iskeyword = old_iskeyword<CR>
    "\:unlet old_iskeyword<CR>
    "\:cw<CR>

" bind L to grep word under cursor for current file only
"nnoremap L :BLines "\b<C-R><C-W>\b"<CR>
nnoremap L * yiw:BLines <C-R><C-W><CR>

nnoremap - <C-W>-

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

" https://stackoverflow.com/a/42218001/766570
nmap <F8> :TagbarToggle<CR>
nmap <F12> :CtrlP<CR>

nmap <F1> :cclose<CR>

map <C-n> :NvimTreeToggle<CR>
map <Leader>n :NvimTreeFindFileToggle<CR>
map <C-l> :NvimTreeResize +10<CR>
map <Leader>l :NvimTreeResize -10<CR>


" jump to beginning of method
" https://stackoverflow.com/a/2109620/766570
nnoremap <Leader>m [m




" replacing FZF shortcuts with telescope
" feel free to undo
" ------------------------------------------
 map <C-j> :FZF<CR>
" nnoremap <C-j> <cmd>Telescope find_files<cr>

nnoremap <leader>j :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<cr>

nnoremap <leader>i :lua require'telescope.actions'.cycle_history_next{}<cr>
nnoremap <leader>y :lua require'telescope.actions'.cycle_history_prev{}<cr>

map <C-f> :Buffers<CR>
"nnoremap <C-f> <cmd>Telescope buffers<cr>

"map <C-h> :BTags<CR>
"map <C-h> :Navbuddy<CR>
"nnoremap <C-h> <cmd>Telescope current_buffer_tags<cr>
" https://github.com/nvim-telescope/telescope.nvim#neovim-lsp-pickers
nnoremap <C-h> :lua require'telescope.builtin'.lsp_document_symbols{}<cr>
"nnoremap <leader>g :lua require'telescope.builtin'.lsp_workspace_symbols{}<cr>



" git browsing
" buffer commits
nnoremap <leader>c :lua require'telescope.builtin'.git_bcommits{}<cr>
" all commits
nnoremap <leader>ca :lua require'telescope.builtin'.git_commits{}<cr>
" git status
nnoremap <leader>s :lua require'telescope.builtin'.git_status{}<cr>
" git branches
nnoremap <leader>r :lua require'telescope.builtin'.git_branches{}<cr>

" command history
nnoremap <leader>cc :lua require'telescope.builtin'.command_history{}<cr>

" map <C-g> :Tags<CR>
"nnoremap <C-g> <cmd>Telescope tags<cr>
"nnoremap <C-g> :lua require'telescope.builtin'.lsp_workspace_symbols{}<cr>
map <leader>ga :Navbuddy<CR>

nnoremap gr :lua require'telescope.builtin'.lsp_references{}<cr>

nnoremap gc :lua require'telescope.builtin'.git_commits{}<cr>
nnoremap gbc :lua require'telescope.builtin'.git_bcommits{}<cr>

nnoremap gcc :lua require'telescope.builtin'.colorscheme{}<cr>

nnoremap gk :lua require'telescope.builtin'.grep_string{}<cr>
nnoremap gg :lua require'telescope.builtin'.live_grep{}<cr>
nnoremap gb :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<cr>
nnoremap ggg :lua require'telescope.builtin'.resume{}<cr>
" navbuddy
nnoremap ga :lua require'telescope.builtin'.lsp_dynamic_workspace_symbols{}<cr>




" ------------------------------------------

map <C-c> :cclose<CR>
"map <C-l> :copen 50<CR>
"map <leader>l :copen 10<CR>
"map <leader>c :copen 10<CR>
map <leader>b :Git blame<CR> 

" arabic support
"map <C-g> :set rightleft<CR>
"map <C-h> :set norightleft<CR>

" agit show
nnoremap <C-i> :Agit<CR>

"noremap <F9> :vertical botright copen 60<cr>
"noremap <F10> :copen 40<cr>
"map <C-1> :copen 40<cr>

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
:nnoremap <leader>-j winc ]<CR>


" see https://stackoverflow.com/a/8950400/766570
" " PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR>

autocmd FileType typescript nmap <silent> <C-p> <Plug>(jsdoc) 
autocmd FileType javascript nmap <silent> <C-p> <Plug>(jsdoc) 


" vim debugging
" https://ccpalettes.wordpress.com/2013/06/03/remote-debugging-php-with-vim-and-xdebug/
" https://vi.stackexchange.com/questions/14159/how-to-point-xdebug-back-to-vim-on-local-host/14161#14161

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000

" debugger
"map <C-g> :Breakpoint
"":nnoremap <leader>-g :Breakpoint 
"map <C-e> :VdebugEval

" set breakpoint 
nnoremap <leader>db :lua require'dap'.toggle_breakpoint()<CR> 
" launch debug sessions and resuming execution
nnoremap <leader>dd :lua require'dap'.continue()<CR>
" step over
"
nnoremap <leader>do :lua require'dap'.step_over()<CR>
" step into
nnoremap <leader>di :lua require'dap'.step_into()<CR>
" open repl
nnoremap <leader>di :lua require'dap'.repl.open()<CR>


" to get number of occurences of a string
"https://vi.stackexchange.com/a/15476/14510
nnoremap  S  :%s///gn<LEFT><LEFT><LEFT><LEFT>

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1


let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:python3_host_prog='/Users/abdullah/.pyenv/shims/python3'


set guifont=DroidSansMono_Nerd_Font:h11

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>tt <cmd>Telescope tags<cr>
" nnoremap <leader>bb <cmd>Telescope current_buffer_tags<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"nnoremap <leader>m <cmd>Minimap<cr>
"nnoremap <leader>mc <cmd>MinimapClose<cr>
nnoremap <leader>mt <cmd>MinimapToggle<cr>

" https://stackoverflow.com/a/61935629/766570
" sorrounding word with quote
" usage ss <character to surround with>
map ss ysiw


" see https://github.com/hrsh7th/nvim-cmp/
set completeopt=menu,menuone,noselect

" fold
" this should automatically fold btw the braces, but it never gets it right
" nnoremap <leader>f zfa} // 
" zf <motion> - create
" za - expand
nnoremap <SPACE> za

" fast way to fold
nnoremap <Leader>f :<C-u>call CustomFold()<CR>
function! CustomFold()
    let motion = input("Enter motion key or line number for folding: ")
    if motion =~ '^\d\+$'   " Check if the input is a line number
        let current_line = line('.')
        execute current_line . ',' . motion . 'fold'
    else
        execute 'normal! zf' . motion
    endif
endfunction

" unfold everything
nnoremap <Leader>uf zi<CR>



set foldmethod=manual
 "colorscheme nord

" silence syntax aanlayzer
" https://github.com/dense-analysis/ale
let g:ale_set_highlights = 0

 "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_italic=1
"colorscheme gruvbox
"colorscheme kanagawa
colorscheme typewriter-night " piotr version
"colorscheme plastic


" https://github.com/kristijanhusak/vim-dadbod-ui#table-helpers
let g:db_ui_auto_execute_table_helpers = 1

" https://gist.github.com/andersevenrud/015e61af2fd264371032763d4ed965b6
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <leader>w :call ToggleQuickFix()<cr>

highlight IncSearch guibg=green ctermbg=green term=underline

" useful for converting js cypher code to neo4j browser cypher 
" to replace params
nnoremap <leader>ww :%s/"\${\(\w\+\)}"/$\1/g<CR>
" undo
nnoremap <leader>x :%s/\$\(\w\+\)/"${\1}"/g
