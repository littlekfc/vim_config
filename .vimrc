execute pathogen#infect()
syntax on
filetype plugin indent on


" 自定义<leader>
let mapleader=","
let g:mapleader=","

" === #2 界面：颜色/窗口分割 ===

set t_Co=256
colorscheme  desert          " 配色方案（可用:highlight查看配色方案细节）
set cursorline              " 高亮显示当前行列
"set cursorcolumn
hi CursorLine cterm=NONE ctermbg=238
hi CursorColumn cterm=NONE ctermbg=238
set equalalways             " 分割窗口时保持平衡
let g:javascript_enable_domhtmlcss=1
                            " js语法高亮脚本的设置
set guioptions=0
set nu
" === #3 排版：缩进/颜色 ===
					
set linespace=4             " 行高
set nowrap                  " 禁止自动折行
set autoindent              " 自动缩进
set cindent
set shiftwidth=4            " 统一缩进为2
set tabstop=4               " Tab宽度为4
set softtabstop=4           " 使用backspace时可一次性删除4个空格
set expandtab               " 使用空格代替Tab
set listchars=tab:>-,trail:-
                            " 使用-来显示Tab
"set foldlevel=100           " 设置vim启动时不开启代码折叠
" 为不同文件设置不同缩进
if has("autocmd")
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType less setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType qmt setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
endif
" 字体设置
if has("win32")
    set guifont=Consolas:h12:cANSI
    au GUIEnter * simalt ~x
elseif has("mac") || has("macunix")
    set guifont=Monaco:h10
else
    set guifont=Monospace\ 10
endif

" === #4 编辑：光标定位/搜索 ===
set ignorecase              " 搜索忽略大小写
set incsearch               " 即时搜索
set hlsearch                " 高亮搜索结果

" === #5 快捷键
" 设置快捷键保存/读取会话内容
nmap <leader>s :mksession! ~\VimTemp.vim<CR>:wviminfo! ~\VimTemp.viminfo<CR>
nmap <leader>o :source ~\VimTemp.vim<CR>:rviminfo ~\VimTemp.viminfo<CR>


" 强行设置设置文件类型
nmap <leader>h :set ft=xhtml<CR>
nmap <leader>t :set ft=qmt<CR>
nmap <leader>c :set ft=css<CR>
nmap <leader>j :set ft=javascript<CR>
nmap <leader>p :set ft=php<CR>
nmap <leader>l :set ft=less<CR>

" F功能键
"nmap <F8> :call Change_curr_dir()<CR>

" 编辑器标签卡快捷键
nmap tt :tabnew<CR>
nmap tn :tabnext<CR>
nmap tp :tabprevious<CR>
nmap tc :tabclose<CR>

" 用<A-h,j,k,l>切换到上下左右的窗口中去                                                                                 
nmap wj <C-W>j
nmap wk <C-W>k
nmap wh <C-W>h
nmap wl <C-W>l
"窗口的分割、关闭及切换
nmap ws :split<cr>
nmap wv :vsplit<cr>                                                                                                     
nmap wc :close<cr>


"nerdTree
map <C-n> :NERDTreeToggle<CR>

"python
autocmd BufNewFile *.py 0r ~/.vim/bundle/python/template/python.py
