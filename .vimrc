filetype off                  " required

"=======VUNDLE PLUGINS===========
"to install Vundle git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'tpope/vim-fugitive'
"Plugin 'dikiaap/minimalist'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'itchyny/lightline.vim'
"Plugin 'flazz/vim-colorschemes'

Plugin 'posva/vim-vue'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'aserebryakov/vim-todo-lists'

Plugin 'Valloric/YouCompleteMe'                                                                 
Plugin 'tstelzer/welpe.vim'


Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'

Plugin 'ervandew/supertab'
"Plugin 'shawncplus/phpcomplete.vim'
Plugin 'shawncplus/phpcomplete.vim'

" All of your Plugins must be added before the following line
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





"=======Plugged PLUGINS===========
"to install plugged curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }                                       
Plug 'alvan/vim-closetag'
"Plug 'Valloric/YouCompleteMe'                                                                 
Plug 'ctrlpvim/ctrlp.vim'
  
Plug 'jelera/vim-javascript-syntax'                                                           
Plug 'shawncplus/php.vim'
Plug 'vim-scripts/Emmet.vim'
Plug 'mattn/emmet-vim/'
"colorshemes
Plug 'tpope/vim-commentary'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/auto-pairs-gentle'


call plug#end()


"My LEADER BUTTON :
let g:mapleader=','




"My favourite colourthemes:
"colorscheme gruvbox
"colorscheme atom-dark-256

colorscheme welpe
"colorscheme nord
"This was previous color theme:
"colorscheme Base2Tone_eveningDark
"colorscheme minimalist
"colorscheme wombat
" colorscheme kalisi
"colorscheme cool
"colorscheme molokai
"colorscheme dracula
"set termguicolors
"colorscheme deep-space
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



"My defaults:
set number
set hlsearch
set incsearch
"set tabstop=1
set modifiable
set smartindent
set tabstop=4
set shiftwidth=4
set t_Co=256
set background=dark
syntax enable
syntax on
set mouse=a
set complete=.,w,b,u
set foldmethod=manual
set backspace=indent,eol,start
set guioptions=
"set gfn=Monaco:h12
set guifont=Source\ Code\ Pro\ for\ Powerline:h12


"For plugins:
"let g:deepspace_italics=1


"let g:closetag_filenames="*.html,*.xhtml,*.phtml, *.htm"
"set paste
"set pastetoggle=<Leader>p 




"mappings
  
map <Leader> <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>                                           
map <Leader>l :ls<CR>
map <Leader>n :bn<CR>
map <Leader>m :bp<CR>
map <Leader>p :set paste<CR>
map <Leader>[ :set nopaste<CR>
map <Leader>q :set mouse-=a<CR>
map <Leader>a :set mouse=a<CR>


nmap <c-U> :CtrlPBufTag<cr>
nmap <c-I> :CtrlPMRUFiles<cr>
nmap <c-E> :CtrlPBuffer<cr>
nmap <c-X> :marks<cr>


"======folding management
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf


nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


"===========LARAVEL==============
"curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > phpctags чтоб
"phptags работали
nmap <Leader>lr :e app/Http/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :CtrlP<cr>app/Http/Controllers/
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :CtrlP<cr>resources/views/
nmap <Leader>tag :!php ./phpctags --recurse --memory=-1<cr>

"========TODOLIST=========
nmap <Leader>tna :VimTodoListsCreateNewItemAbove<cr>
nmap <Leader>tnb :VimTodoListsCreateNewItemBelow<cr>
nmap <Leader>tgn :VimTodoListsGoToNextItem<cr>
nmap <Leader>tgp :VimTodoListsGoToPreviousItem<cr>
nmap <Leader>tc :VimTodoListsCreateNewItem<cr>
nmap <Leader>tt :VimTodoListsToggleItem<cr>



"POWERLINE
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color

"===================CTRLP settings==================
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\git\vendor'

"===================SnipMate settings==================
"let g:snips_trigger_key = '<C-m'
imap <C-j> <Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger

"===================CTAGS settings==================

nmap <Leader>f :tag<space>

"=========WouCompleteMe========


let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_collect_identifiers_from_tags_files = 0

"=====================GREPLACE=================

set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

"=====================YouCompleteMe=================
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_allow_changing_updatetime = 1

let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_disable_for_files_larger_than_kb = 10000



let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>



"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF



"=============PHP============
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>


function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>


" let g:ycm_auto_trigger = 0



"========MACRO=========


" let @q="yiw\/}^MO$this->^[pa = $^[pa;^[?construct^MOprotected $^[pa;^M^[/construct^M/^R\"^M "

" let @q="yiw/}^MO$this->^[pa = $^[pa;^[?construct^MOprotected $^[pa;^M^[/com<80>kbnstruct^M/^R\"^M"
" ino <tab> <c-r>=snipMate#TriggerSnippet()<cr> 

let @w="yiw/}O$this->pa = $pa;?constructOprotected $pa;/construct/\""

let @l="c{{'pla|_"


" let g:snipMate = {'get_snippets': {'faked_function_reference':
" 			\'snipMate#GetSnippets'}, 'snippet_dirs':['~/.vim/snippets'],
" 			\ 'no_match_completion_feedkeys_chars':
" 			\' ', 'get_sc opes': {'faked_function_reference': 'return
" 			\split(&ft,"\\.")+[&syntax, "_"]'}, 'scope_aliases': {'xhtml': 'html', 'scss':
" 			\'css', 'ur': 'html,javascript', 'cu': 'c', 'less': 'css' , 'php':
" 			\'php,html,javascript', 'html': 'javascript', 'objc': 'c', 'cpp': 'c', 'mxml':
" 			\'actionscript', 'eruby': 'eruby-rails,html'}}

"let g:snipMate.snippet_dirs = ['~/.vim/snippets/*']










