"==============设置编码=============================================="
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8	"使用utf-8编码
"====================================================================="
set nu
set number
"====================================================================="
set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
"===================================================================="
set showmatch  "显示括号匹配"
set showcmd
set clipboard=unnamed,unnamedplus	"可以从vim复制到剪贴板中"
set mouse=a		"可以在buffer的任何地方使用鼠标"
set cursorline	"显示当前行,突出显示当前行"
set hlsearch		"显示高亮搜索"
set incsearch
set history=40	"默认指令记录是20"
set ruler		"显示行号和列号"
set pastetoggle=F3	"F3快捷键于paste模式与否之间转化，防止自动缩进"
set helplang=cn	"设置为中文帮助文档，需下载并配置之后生效"
"===============文本格式排版===================="
set tabstop=4
set shiftwidth=4	"设置自动对齐的缩进级别
set autoindent	"配合下面一条命令根据不同语言类型进行不同的缩进操作
filetype plugin indent on
set cindent		"以c语言风格自动缩进"
set smartindent	"自动识别以#开头的注释，不进行换行"

"=========================================================================="
"显示空格和tab键在Vim中通过鼠标右键粘贴时会在行首多出许多缩进和空格"
"通过set paste可以在插入模式下粘贴内容时不会有任何格式变形、胡乱缩进等问题"
set listchars=tab:>-,trail:-
"===========================选择solarized的模式========================== 
syntax enable  
syntax on 
"solarzed的深色模式  
"set background=dark 
"solarized的浅色模式 
"set background=light 
"colorscheme solarized        "开启背景颜色模式 
 
"===========================选择molokai的模式============================ "
let g:rehash256 = 1 
let g:molokai_original = 1    "相较于上一个模式，个人比较喜欢此种模式"

highlight NonText guibg=#060606 
highlight Folded  guibg=#0A0A0A guifg=#9090D0 
"set t_Co=256 
"set background=dark 
colorscheme  molokai
"=======================括号自动补齐，并且光标自动移入括号中==============================="
"由于常见的配置达不到要求，使用vundle插件管理器安装括号补全功能"
 "Plugin 'Raimondi/delimitMate'"
"============old=======配置vundle=====从github克隆下来的安装1.3MB====================="
"filetype off"
" set rtp+=/home/zhou/.vim/bundle/Vundle.vim "
"call vundle#rc()"
"============new========配置vundle=====从github克隆下来的安装1.3MB====================="
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=/home/zhou/.vim/bundle/Vundle.vim  

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"==========================本地没有此文件============================================"
"Plugin 'file:///home/gmarik/path/to/plugin'"
"=========================================================================="

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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

"=================Bundle 'christoomey/vim-run-interactive'已经过期了，新版的要使用Plugin 'christoomey/vim-run-interactive'=========="
"=================Define Plugins via Github repos========================"
Plugin 'christoomey/vim-run-interactive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'croaky/vim-colors-github'
Plugin 'danro/rename.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-Pluginr'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/tComment'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'godlygeek/tabular'
Plugin 'msanders/snipmate.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'othree/html5.vim'
Plugin 'xsbeats/vim-blade'
Plugin 'Raimondi/delimitMate'
Plugin 'groenewege/vim-less'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tomasr/molokai'
Plugin 'klen/python-mode'
"=========================================================================="
"让vimrc配置变更立即生效"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
 "=========================================================================="
 
 
  
