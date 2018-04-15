set modelines=0

"设置更好的删除
set backspace=2

syntax on "语法高亮

"用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

set smartindent "智能对齐

set autoindent "自动对齐

set confirm "在处理未保存或只读文件的时候，弹出确认框

set tabstop=4 "tab键的宽度
set softtabstop=4
set shiftwidth=4 "统一缩进为4
set expandtab "不要用空格替代制表符

set number "显示行号
set history=50  "历史纪录数
set hlsearch
set incsearch "搜素高亮,搜索逐渐高亮

set gdefault "行内替换
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 "编码设置

colorscheme ceudah

set guifont=Nimbus:h16:cANSI "设置字体
set langmenu=zn_CN.UTF-8
set helplang=cn  "语言设置

set ruler "在编辑过程中，在右下角显示光标位置的状态行

set laststatus=1  "总是显示状态行

set showcmd "在状态行显示目前所执行的命令，未完成的指令片段也会显示出来

set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行的距离
set showmatch "高亮显示对应的括号
set matchtime=5 "对应括号高亮时间(单位是十分之一秒)

set autowrite "在切换buffer时自动保存当前文件

set wildmenu  "增强模式中的命令行自动完成操作

set linespace=2 "字符间插入的像素行数目
set whichwrap=b,s,<,>,[,] "开启normal 或visual模式下的backspace键空格键，左右方向键,insert或replace模式下的左方向键，右方向键的跳行功能

filetype plugin indent on "分为三部分命令:file on,file plugin on,file indent on 分别是自动识别文件类型, 用用文件类型脚本,使用缩进定义文件

set foldenable  "允许折叠
set cursorline "突出显示当前行
set magic  "设置魔术？神马东东
set ignorecase "搜索忽略大小写


"------------------------ 快捷鍵設置 -------------------------------
"格式 : map 快捷鍵 對應的按鍵或指令

" <Control-N> as Open NERDtree
map <C-n> :NERDTree<CR>


"------------------------ Vundle 環境設置 ---------------------------

filetype off         "required

" set the runtime path to include Vundle and initizlize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle 管理的插件List 必須在 vundle#begin() 和 vundle#end() 之間
" vundle#begin( Path )  Path指定一個Vundle安裝插件路徑
call vundle#begin()   "required

" let Vundel manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo.
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'ctrlpvim/ctrlp.vim'

"顯示你目前編輯的檔名、行數欄數、檔案編碼格式等等資訊
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'

Plugin 'altercation/vim-colors-solarized'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'easymotion/vim-easymotion'

"快速给词加环绕符号,例如单引号/双引号/括号/成对标签等
Plugin 'tpope/vim-surround'

"重复一个插件的操作
Plugin 'tpope/vim-repeat'

"樹狀目錄
Plugin 'scrooloose/nerdtree'

" Code 自動補全
Plugin 'Valloric/YouCompleteMe'

"括号匹配
Plugin 'jiangmiao/auto-pairs'

"缩进提示线
Plugin 'Yggdroot/indentLine'

"分屏
"Plugin 'christoomey/vim-tmux-navigator'

"插件List 結束
call vundle#end()     "required

filetype plugin indent on

"------------------------ Vundle end --------------------------------



"---------------------- set YouCompleteMe ---------------------------

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>lo :lopen<CR> "open locationlist                                                                                                                      
nnoremap <leader>lc :lclose<CR>   "close locationlist
inoremap <leader><leader> <C-x><C-o>"
inoremap <leader><leader> <C-x><C-o>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"--------------------- YouCompleteM end ----------------------------------
