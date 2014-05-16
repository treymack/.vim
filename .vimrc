"
" Vundle config (header) {
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Source_Code_Pro_Medium:h11
    set guioptions-=T
    " set guioptions+=e
    set t_Co=256
    " set guitablabel=%M\ %t " suspicious this line is creating
    " a new tab when sourcing vimrc
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" " Use Unix as the standard file type
" set ffs=unix,dos,mac


Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gd :Gdiff<cr>

Plugin 'airblade/vim-gitgutter'
highlight clear SignColumn

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" map <Leader>e :NERDTreeToggle<CR>
" map <Leader><Leader>e :NERDTreeFind<CR>
" Commenting blocks of code.
" noremap <Leader>c :TComment<CR>
" noremap <Leader>cc :TComment<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Fuzzy Finder config
" " 
" " directories and extensions to ignore when listing files
" " these contain a lot of Python-isms, yours will probably vary
" " 
" " Truth be told, I don't remember what these do, but I must have
" " found them necessary back when I installed fuzzyfinder years ago
" let s:slash = '[/\\]'
" let s:startname = '(^|'.s:slash.')'
" let s:endname = '($|'.s:slash.')'
" 
" let s:extension = '\.bak|\.dll|\.exe|\.o|\.pyc|\.pyo|\.swp|\.swo'
" let s:dirname = 'ready|build|deploy|dist|vms|\.bzr|\.git|\.hg|\.svn|.+\.egg-info|bin|obj|_Resharper.*'
" let g:fuf_file_exclude = '\v'.'('.s:startname.'('.s:dirname.')'.s:endname.')|(('.s:extension.')$)'
" let g:fuf_dir_exclude = '\v'.s:startname.'('.s:dirname.')'.s:endname
" 
" " limit number of displayed matches
" " (makes response instant even on huge source trees)
" let g:fuf_enumeratingLimit = 60
" 
" nnoremap <Leader>ff :FufFile **/<cr>
" nnoremap <Leader>fb :FufBuffer<cr>
" nnoremap <Leader>ft :FufTag<cr>
" 
" " (the /min is a Windows-specific way to run the command in the background so that Vim doesn't lock up while indexing very large projects)
" noremap <f5> :!start cmd /c "ctags -R ." & pause<cr>:FufRenewCache<cr>
" 





"
" Vundle config (footer) {
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }

" gvim stuff because i like windows
source $VIMRUNTIME/mswin.vim
behave mswin

" set diffexpr=MyDiff()
" function! MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg2 = v:fname_new
"   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"   let arg3 = v:fname_out
"   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"   let eq = ''
"   if $VIMRUNTIME =~ ' '
"     if &sh =~ '\<cmd'
"       let cmd = '""' . $VIMRUNTIME . '\diff"'
"       let eq = '"'
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction
" 
" " END DEFAULT VIMRC
" 

let mapleader = ","
map K i<CR><Esc>
" noremap <C-B> :wa<CR> :!rake<CR> :copen 7<CR>
noremap <C-B> :wa<CR> :!rake<CR>

" folding
set foldlevelstart=99
set foldmethod=indent
nnoremap <Space> za
vnoremap <Space> za

set number

" editing / sourcing _vimrc
nnoremap <Leader>ve :vsplit $MYVIMRC<cr>
nnoremap <Leader>vs :so $MYVIMRC<cr>

" open chrome, ff, for current file
nnoremap <F12>f :exe ':silent !firefox %'<CR>
nnoremap <F12>c :exe ':silent !"C:/Program Files (x86)/Google/Chrome/Application/chrome.exe" %'<CR>
nnoremap <F12>o :exe ':silent !opera %'<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       5.0 - 29/05/12 15:43:36
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :wa!<cr>

" Fast omnicomplete
inoremap <C-Space> <C-X><C-O>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 2 lines to the cursor - when moving vertically using j/k
set so=2

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.obj,*.exe,*.dll

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd BufRead *.cshtml setf html

" format whole document with ==
nnoremap == m6ggVG=`6

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :bd<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" next / previous buffers
noremap <C-n> :bn<cr>
noremap <C-p> :bp<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" " Opens a new tab with the current buffer's path
" " Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" " Specify the behavior when switching between buffers 
" try
"   set switchbuf=useopen,usetab,newtab
"   set stal=2
" catch
" endtry
" 
" " Return to last edit position when opening files (You want this!)
" autocmd BufReadPost *
"      \ if line("'\"") > 0 && line("'\"") <= line("$") |
"      \   exe "normal! g`\"" |
"      \ endif
" " Remember info about open buffers on close
" set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Remap VIM 0 to first non-blank character
" map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" " Delete trailing white space on save, useful for Python and CoffeeScript ;)
" func! DeleteTrailingWS()
"   exe "normal mz"
"   %s/\s\+$//ge
"   exe "normal `z"
" endfunc
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.coffee :call DeleteTrailingWS()


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => vimgrep searching and cope displaying
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " When you press gv you vimgrep after the selected text
" vnoremap <silent> gv :call VisualSelection('gv')<CR>
" 
" " Open vimgrep and put the cursor in the right position
" map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
" 
" " Vimgreps in the current file
" map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>
" 
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" " Do :help cope if you are unsure what cope is. It's super useful!
" "
" " When you search with vimgrep, display your results in cope by doing:
" "   <leader>cc
" "
" " To go to the next search result do:
" "   <leader>n
" "
" " To go to the previous search results do:
" "   <leader>p
" "
" map <leader>cc :botright cope<cr>
" map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
" map <leader>n :cn<cr>
" map <leader>p :cp<cr>
" 
" 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Spell checking
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>
" 
" " Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=
" 
" 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Misc
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Remove the Windows ^M - when the encodings gets messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" 
" " Quickly open a buffer for scripbble
" map <leader>q :e ~/buffer<cr>
" 
" " Toggle paste mode on and off
" map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction



