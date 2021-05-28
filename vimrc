"使vimrc文件马上生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"设置自己的Leader
let mapleader = ","

"关于保存退出文件
nmap <leader>w :w <CR> 
nmap <leader>q :q! <CR>

"处理复制粘贴

vnoremap <Leader>y "+y
nmap <leader>p "+p

"插入模式切换到普通模式
inoremap jk <Esc>

"上跳5行
nnoremap <c-k> 5k

"下跳5行
nnoremap <c-j> 5j


"--------------------------------------------基本配置--------------------------------------------

"不与vi兼容
set nocompatible

"打开语法高亮
syntax on

"在底部显示，当前处于命令模式还是插入模式
set showmode

"支持使用鼠标
set mouse=a

"use utf-8
set encoding=utf-8

"启用256色
set t_Co=256

"开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim。
filetype indent on

"缩进
"按下回车键后，下一行的缩进会自动跟上一行缩进保持一致。
set autoindent

"按下tab出现的空格数量
set tabstop=2

"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4

"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
set expandtab

"tab转化为多少个空格
set softtabstop=2

"--------------------------------------------外观--------------------------------------------
"显示行号
set number

"显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set relativenumber

"光标所在当前行高亮
set cursorline

"设置行宽，一行有多少个字符。
set textwidth=80

"自动折行
set wrap

"只有遇到指定的符号,才折行，不会在单词内部折行.
set linebreak

"指定者行处与编辑窗口右边缘之间空出的字符数。
set wrapmargin=2

"滚动时，光标距离底部的行数
set scrolloff=5

"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

"在状态栏显示光标的当前位置
set ruler


"--------------------------------------------搜索--------------------------------------------

"光标遇到括号类的时候，自动高亮另外一个括号
set showmatch

"搜索时，高亮显示匹配结果
set hlsearch

"搜索模式时，每当输入一个字符，就跳到第一个匹配的结果上
set incsearch

"搜索时忽略大小写
set ignorecase

"如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set smartcase


"--------------------------------------------编辑--------------------------------------------
"不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）。
set nobackup

"不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp。
set nobackup

"不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp。
set noswapfile

"保留撤销历史。Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头。
set undofile

"设置备份文件、交换文件、操作历史文件的保存位置。结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名。
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//
            
"自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录。
set autochdir

"出错时，发出视觉提示，通常是屏幕闪烁。
set visualbell

"vim需要记住多少次历史操作
set history=500

"打开文件监视
set autoread

"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
"set listchars=tab:»■,trail:■
"set list

"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full
