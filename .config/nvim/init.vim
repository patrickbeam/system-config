"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alok/notational-fzf-vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'tweekmonster/gofmt.vim'


if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif


"" Color
Plug 'gruvbox-community/gruvbox'
Plug 'tomasr/molokai'
Plug 'tomasiser/vim-code-dark'
Plug 'flrnprz/plastic.vim'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()

"*****************************************************************************
"" Basic Setup
"*****************************************************************************
let g:nv_search_paths = ['~/workspace/notes', '~/workspace/sre-documentation', '~/workspace/infra-documentation']
let g:gofmt_exe = 'goimports'

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set scrolloff=8

nnoremap <F5> "=strftime("%b %d, %Y")<CR>P

"*****************************************************************************
"" netrw settings for file browsing
"*****************************************************************************
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

"*****************************************************************************
"" Mappings
"*****************************************************************************
"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set relativenumber

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let no_buffers_menu=1
let g:vim_monokai_tasty_italic = 1
colorscheme gruvbox 
set background=dark
let g:gruvbox_contrast_dark = 'hard'
"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
