" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @JefferyRi



" ==================== Auto load for first time uses ====================
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


let g:nvim_plugins_installation_completed=1
let g:nvim_plugins_installation_completed=1
if empty(glob($HOME.'/.config/nvim/plugged/wildfire.vim/autoload/wildfire.vim'))
	let g:nvim_plugins_installation_completed=0
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location 
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source $HOME/.config/nvim/_machine_specific.vim


" ==================== Editor behavior ====================
let &t_ut=''
set autochdir
set exrc
set secure
set number
set relativenumber
set cursorline
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:·
set scrolloff=4
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set foldmethod=indent "（常用）缩进折叠方法，相同的缩进中代码会被折叠。
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright "如果打开，窗口的分割会把新窗口放到当前窗口之右。 :split
set splitbelow "如果打开，窗口的分割会把新窗口放到当前窗口之下。 :split 
set noshowmode "将不会提示模式的消息，因为后面有插件，可以嗲提
set ignorecase "搜索模式里忽略大小写。也用于标签文件的查找。
set smartcase "在ignorecase开启的前提下，只能的去判断
set shortmess+=c "Dont' pass messages to ins-completin menu
set inccommand=split "会在输入搜索模式时，在一个垂直分割的新窗口中实时显示搜索结果的匹配项
set completeopt=longest,noinsert,menuone,noselect,preview "当进行自动完成时，Vim 会显示一个菜单，但不会自动插入任何候选项。它会将最长的匹配项作为首选项，并在菜单中显示每个候选项的预览
set lazyredraw "用于延迟重绘屏幕的行为
set visualbell "设置可视化提示方式来表示响铃
set colorcolumn=100 "将在指定的列位置之后显示一条垂直的标记线。这条标记线通常用于标识代码的最大行宽或规范的列边界。
set updatetime=100 "用于设置自动保存或触发其他操作的延迟时间的选项
set virtualedit=block "用于设置虚拟编辑（virtual editing）模式为块模式
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "打开文件 自动回到上一次的位置



" ==================== Terminal Behaviors ====================
"let g:neoterm_autoscroll = 1
"autocmd TermOpen term://* startinsert
"tnoremap <C-N> <C-\><C-N>
"tnoremap <C-O> <C-\><C-N><C-O>





" ==================== Basic Mappings ====================
let mapleader=" "
nnoremap Q :q<CR>
nnoremap S :w<CR>
" Open the vimrc file anytime
nnoremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
"nnoremap <LEADER>rv :e .nvimrc<CR>

" Undo operations
noremap u u
" Insert Key
noremap h i
noremap H I
" Copy to system clipboard
vnoremap Y "+y
" Find pair
" 会将光标移动到匹配的括号（圆括号、方括号、花括号）的对应位置上
noremap ,. %
"在可视模式下按下 ki 会将光标移动到选定文本的最后一个字符，并且会选中从光标到匹配的括号位置的文本
vnoremap hi $%
" Search
" 关闭当前搜索结果的高亮显示  用LEADER + 回车 <CR>
noremap <LEADER><CR> :nohlsearch<CR> 
" Adjacent duplicate words  查找所有的相邻的重复单词 两个
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1
" Space to Tab
" 这个命令是在普通模式下，全局修改 把四个空格 替换成一个tab
" 这里需要注意的是，我在上面修改过 一个tab是两个空格  所以需要注意
nnoremap <LEADER>tt :%s/    /\t/g
" 这里是在可视模式下，将你选中的文本 的四个空格变成 一个tab
vnoremap <LEADER>tt :s/    /\t/g
" Folding   以foldmethod 方式 折叠代码  LEADER + o
noremap <silent>  <LEADER>o za

" insert a pair of {} and go to the next line  ctrl + y 插入一堆大括号
inoremap <c-y> <ESC>A {}<ESC>i<CR><ESC>ko


" ==================== Cursor Movement ====================
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     i
" < j   l >
"     k
"     v
noremap <silent> i k
noremap <silent> j h
noremap <silent> k j
noremap <silent> l l
" 目前还不知道 这两行是啥意思
noremap  gi gk
noremap  gk gj
" 在普通模式下 \v 选中当前行所有的内容
noremap <silent> \v v$h
" U/E keys for 5 times i/k (faster navigation)
noremap <silent> I 5k
noremap <silent> K 5j
" N key: go to the start of the line
noremap <silent> J 0
" I key: go to the end of the line
noremap <silent> L $
" Faster in-line navigation
noremap W 5w
noremap B 5b
" set e (same as n, cursor left) to 'end of word'
noremap e e
" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-i> 5<C-y>
noremap <C-k> 5<C-e>
" If you use Qwerty keyboard, uncomment the next line.
source $HOME/.config/nvim/cursor_for_qwerty.vim


" 在插入模式下，C-a 是回到行尾 
" ==================== Insert Mode Cursor Movement ====================
inoremap <C-a> <ESC>A


" ==================== Command Mode Cursor Movement ====================
" 在命令行模式下，进行上下左右的移动
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
"cnoremap <C-b> <Left>
"cnoremap <C-f> <Right>
" 在命令行模式下 M-b   M-w   是以单词为单位进行移动
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

" ==================== Window management ====================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l
noremap qf <C-w>o
" Disable the default s key
noremap s <nop>
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H
" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>



" ==================== Tab management ====================
" Create a new tab with ti
noremap ti :tabe<CR>
noremap tI :tab split<CR>
" Move around tabs with tj and tl
noremap tj :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmj and tml



" ==================== Markdown Settings ====================
" Snippets
source $HOME/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" ==================== Other useful stuff ====================
" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>
" Spelling Check with <space>sc  检查那些字是拼音写的  那些字是英文写的 
noremap <LEADER>sc :set spell!<CR>
" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h
" Call figlet  目前可能还用不到
noremap tx :r !figlet 
" find and replace /old/new/
noremap \s :%s///g<left><left><left>
" set wrap
noremap <LEADER>sw :set wrap<CR>



" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		silent! exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		exec "!time  ./%<"
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		exec "!open ".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('$HOME/.config/nvim/plugged')

" underlines the word under cursor
Plug 'itchyny/vim-cursorword'


" Pretty Dress
Plug 'theniceboy/nvim-deus'


" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
" 好像暂时没有用到
Plug 'nvim-treesitter/playground'

" Snippet
Plug 'theniceboy/vim-snippets'

"undotree
Plug 'mbbill/undotree'

" Status line
Plug 'liuchengxu/eleline.vim'

" General Highlighter
Plug 'NvChad/nvim-colorizer.lua'
Plug 'RRethy/vim-illuminate'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', { 'commit': '63dd239bfe02998810b39d039827e2510885b57b', 'do': 'yarn install --frozen-lockfile' }
"Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': 'v0.0.79'}

" Other filetypes
Plug 'wlangstroth/vim-racket'
Plug 'hashivim/vim-terraform'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" File navigation
Plug 'ibhagwan/fzf-lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'theniceboy/joshuto.nvim'
Plug 'airblade/vim-rooter'

" Editor Enhancement
Plug 'petertriho/nvim-scrollbar'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'ggandor/lightspeed.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'theniceboy/tcomment_vim' " in <space>cn to comment a line
Plug 'theniceboy/antovim' " gs to switch
Plug 'tpope/vim-surround' " type yshw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type h' to select all text in '', or type h) h] h} hp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
Plug 'svermeulen/vim-subversive'

" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': 'python' }

" Vim Applications
Plug 'itchyny/calendar.vim'

" Git
Plug 'lewis6991/gitsigns.nvim'

call plug#end()



" ==================== Dress up my vim ====================
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
silent! color deus

" 设置NonText 和 SpecialKey 高亮组的前景色 NonText: 非文本字符
" 行号，列号，空白格等
hi NonText ctermfg=gray guifg=grey10
" SpecialKey:制表符 回车符 换行符 等等这些
hi SpecialKey ctermfg=blue guifg=grey70


" ==================== nvim-scrollbar ====================
if g:nvim_plugins_installation_completed == 1
lua <<EOF
require("scrollbar").setup()
require("scrollbar.handlers.search").setup()
require("scrollbar").setup({
	show = true,
	handle = {
		text = " ",
		color = "#928374",
		hide_if_all_visible = true,
	},
	marks = {
		Search = { color = "yellow" },
		Misc = { color = "purple" },
	},
	handlers = {
		cursor = true,
		diagnostic = true,
		gitsigns = true,
		handle = true,
		search = true,
	},
})
EOF
endif


" ==================== nvim-hlslens ====================
noremap <silent> = <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> - <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" ==================== lightspeed ====================
noremap f <Plug>Lightspeed_s
noremap F <Plug>Lightspeed_S


" ==================== vim-after-object ====================
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')


" ==================== tabular ====================
vmap ga :Tabularize /


" ==================== vim-visual-multi ====================
"let g:VM_theme             = 'iceblue'
"let g:VM_default_mappings = 0
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_custom_motions             = {'j': 'h', 'l': 'l', 'i': 'k', 'k': 'j', 'J': '0', 'L': '$', 'e': 'e'}
let g:VM_maps['i']                  = 'h'
let g:VM_maps['I']                  = 'H'
let g:VM_maps['Find Under']         = '<C-h>'
let g:VM_maps['Find Subword Under'] = '<C-h>'
let g:VM_maps['Find Next']          = ''
let g:VM_maps['Find Prev']          = ''
let g:VM_maps['Remove Region']      = 'q'
let g:VM_maps['Skip Region']        = '<c-n>'
let g:VM_maps["Undo"]               = 'u'


" ==================== tcomment_vim ====================
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cj g>c
vmap <LEADER>cj g>
nmap <LEADER>cl g<c
vmap <LEADER>cl g<


" ==================== eleline.vim ====================
let g:airline_powerline_fonts = 0
set laststatus=2


" ==================== vim-subversive ====================
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)



" ==================== nvim-treesitter ====================
if g:nvim_plugins_installation_completed == 1
lua <<EOF
require'nvim-treesitter.configs'.setup {
	-- one of "all", "language", or a list of languages
	ensure_installed = {"typescript", "dart", "java", "c", "prisma", "bash", "go","cpp","html"},
	highlight = {
		enable = true,              -- false will disable the whole extension
		disable = { "rust" },  -- list of language that will be disabled
	},
}
EOF
endif

" ==================== vim-illuminate ====================
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl


" ==================== fzf-lua ====================
noremap <silent> <C-p> :FzfLua files<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-h> :FzfLua oldfiles cwd=~<CR>
noremap <silent> <C-q> :FzfLua builtin<CR>
noremap <silent> <C-l> :FzfLua lines<CR>
noremap <silent> <C-w> :FzfLua buffers<CR>
noremap <leader>; :History:<CR>
augroup fzf_commands
  autocmd!
  autocmd FileType fzf tnoremap <silent> <buffer> <c-k> <down>
  autocmd FileType fzf tnoremap <silent> <buffer> <c-i> <up>
augroup end

if g:nvim_plugins_installation_completed == 1
lua <<EOF
require'fzf-lua'.setup {
	global_resume = true,
	global_resume_query = true,
	winopts = {
		height = 0.95,
		width = 0.95,
		preview = {
			scrollbar = 'float',
		},
		fullscreen = false,
		vertical       = 'down:45%',      -- up|down:size
		horizontal     = 'right:60%',     -- right|left:size
		hidden         = 'nohidden',
	},
	keymap = {
		-- These override the default tables completely
		-- no need to set to `false` to disable a bind
		-- delete or modify is sufficient
		builtin = {
			["<c-f>"]      = "toggle-fullscreen",
			["<c-r>"]      = "toggle-preview-wrap",
			["<c-p>"]      = "toggle-preview",
			["<c-y>"]      = "preview-page-down",
			["<c-l>"]      = "preview-page-up",
			["<S-left>"]   = "preview-page-reset",
		},
		fzf = {
			["esc"]        = "abort",
			["ctrl-h"]     = "unix-line-discard",
			["ctrl-k"]     = "half-page-down",
			["ctrl-b"]     = "half-page-up",
			["ctrl-n"]     = "beginning-of-line",
			["ctrl-a"]     = "end-of-line",
			["alt-a"]      = "toggle-all",
			["f3"]         = "toggle-preview-wrap",
			["f4"]         = "toggle-preview",
			["shift-down"] = "preview-page-down",
			["shift-up"]   = "preview-page-up",
			["ctrl-e"]     = "down",
			["ctrl-u"]     = "up",
		},
	},
  previewers = {
    cat = {
      cmd             = "cat",
      args            = "--number",
    },
    bat = {
      cmd             = "bat",
      args            = "--style=numbers,changes --color always",
      theme           = 'Coldark-Dark', -- bat preview theme (bat --list-themes)
      config          = nil,            -- nil uses $BAT_CONFIG_PATH
    },
    head = {
      cmd             = "head",
      args            = nil,
    },
    git_diff = {
      cmd_deleted     = "git diff --color HEAD --",
      cmd_modified    = "git diff --color HEAD",
      cmd_untracked   = "git diff --color --no-index /dev/null",
      -- pager        = "delta",      -- if you have `delta` installed
    },
    man = {
      cmd             = "man -c %s | col -bx",
    },
    builtin = {
      syntax          = true,         -- preview syntax highlight?
      syntax_limit_l  = 0,            -- syntax limit (lines), 0=nolimit
      syntax_limit_b  = 1024*1024,    -- syntax limit (bytes), 0=nolimit
    },
  },
  files = {
    -- previewer      = "bat",          -- uncomment to override previewer
                                        -- (name from 'previewers' table)
                                        -- set to 'false' to disable
    prompt            = 'Files❯ ',
    multiprocess      = true,           -- run command in a separate process
    git_icons         = true,           -- show git icons?
    file_icons        = true,           -- show file icons?
    color_icons       = true,           -- colorize file|git icons
    -- executed command priority is 'cmd' (if exists)
    -- otherwise auto-detect prioritizes `fd`:`rg`:`find`
    -- default options are controlled by 'fd|rg|find|_opts'
    -- NOTE: 'find -printf' requires GNU find
    -- cmd            = "find . -type f -printf '%P\n'",
    find_opts         = [[-type f -not -path '*/\.git/*' -printf '%P\n']],
    rg_opts           = "--color=never --files --hidden --follow -g '!.git'",
    fd_opts           = "--color=never --type f --hidden --follow --exclude .git",
  },
  buffers = {
    prompt            = 'Buffers❯ ',
    file_icons        = true,         -- show file icons?
    color_icons       = true,         -- colorize file|git icons
    sort_lastused     = true,         -- sort buffers() by last used
  },
}
EOF
endif



" ==================== coc.nvim ====================	
let g:coc_global_extensions = [
		\ 'coc-css',
		\ 'coc-html',
		\ 'coc-yank',
		\ 'coc-diagnostic',
		\ 'coc-explorer',
		\ 'coc-java',
		\ 'coc-pyright',
		\ 'coc-snippets',
		\ 'coc-syntax',
		\ 'coc-translator',
		\ 'coc-tasks',
		\ 'coc-vimlsp'
	  \ ]
" 按下tab键
" 如果菜单栏可见，就执行往下移动一个，如果光标前面没有字符或者光标前面的字符为空格
" 则按下 插入一个 制表符；
" 否则的话  就执行CheckBackspace这个函数
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" 这个映射就是将Shift+tab 映射为 如果菜单栏可见，就执行往上移动一个;
" 如果不可见，就执行 Ctrl + h  就是往前删除一个字符 
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 这个函数就是单纯地 检查光标前面是不是空格了
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"ctrl + o 刷新coc建议的建议菜单
inoremap <silent><expr> <c-o> coc#refresh()
" 根据当前文件类型，如果文件类型是vim help 的  就会执行第一个分支， 否则就会执行第二个分支
function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
"使用前缀键 + h 就可以调用上面的函数 总的一句就是调用文档
nnoremap <LEADER>h :call Show_documentation()<CR>


" <LEADER> + d 调出 诊断列表
" 诊断列表就是由代码静态分析或语法检查工具提供的关于代码中可能存在的问题或错误的提示
" <LEADER> + -  上  <LEADER> + = 下 
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
" 调出coc命令行
nnoremap <c-c> :CocCommand<CR>

" Text Objects
xmap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap kf <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap kc <Plug>(coc-classobj-i)
omap kc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Useful commands
" 这个是基于coc-yank 插件 的clipaboard History
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
" go definition 就是跳转到定义 如果是自己写的函数就会跳转到函数的声明，如果是系统内置的函数，就会跳转到文档里
nmap <silent> gd <Plug>(coc-definition)
" go Definition  就是先打开一个新的tab(ti) 然后go definition
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
" 这个就是显示他的定义  到目前为止 我还没用出来过他QAQ
nmap <silent> gy <Plug>(coc-type-definition)
" 这个 gr 就是显示当前光标所在的单词或者其他东西 在全局的位置，查找
nmap <silent> gr <Plug>(coc-references)
" 这个功能更加好用，直接如果想给变量或者函数改名字，直接光标移动到那里，直接按快捷键，就好了 会全局替换哦
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w
" coc-tasks
noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-k>'
let g:coc_snippet_prev = '<c-i>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

" ccls 配置
let g:coc_ccls_args = ['/Library/Developer/CommandLineTools/usr/include']

" ==================== Undotree ====================
noremap U :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> i <plug>UndotreeNextState
	nmap <buffer> k <plug>UndotreePreviousState
	nmap <buffer> I 5<plug>UndotreeNextState
	nmap <buffer> K 5<plug>UndotreePreviousState
endfunc


" ==================== Markdown-Preview.nvim ====================	
let g:mkdp_browser = '/Applications/Safari.app'
let g:mkdp_browserfunc = ''



" ==================== vim-table-mode ====================
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'


" ==================== vim-markdown-toc ====================
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" ==================== Bullets.vim ====================
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]

" ==================== nvim-colorizer.lua ====================
lua <<EOF
require("colorizer").setup {
	filetypes = { "*" },
	user_default_options = {
		RGB = true, -- #RGB hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		names = true, -- "Name" codes like Blue or blue
		RRGGBBAA = false, -- #RRGGBBAA hex codes
		AARRGGBB = true, -- 0xAARRGGBB hex codes
		rgb_fn = false, -- CSS rgb() and rgba() functions
		hsl_fn = false, -- CSS hsl() and hsla() functions
		css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
		-- Available modes for `mode`: foreground, background,  virtualtext
		mode = "virtualtext", -- Set the display mode.
		-- Available methods are false / true / "normal" / "lsp" / "both"
		-- True is same as normal
		tailwind = false, -- Enable tailwind colors
		-- parsers can contain values used in |user_default_options|
		sass = { enable = false, parsers = { css }, }, -- Enable sass colors
		virtualtext = "■",
	},
	-- all the sub-options of filetypes apply to buftypes
	buftypes = {},
}
EOF


" ==================== joshuto.nvim ===================
let g:joshuto_floating_window_winblend = 0
let g:joshuto_floating_window_scaling_factor = 1.0
let g:joshuto_use_neovim_remote = 1 " for neovim-remote support

" ==================== vim-rooter ====================
let g:rooter_patterns = ['__vim_project_root', '.git/']
let g:rooter_silent_chdir = 1


" ==================== gitsigns.nvim ====================
lua <<EOF
require('gitsigns').setup({
	signs = {
    add          = { hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
    change       = { hl = 'GitSignsChange', text = '░', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
    delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
    topdelete    = { hl = 'GitSignsDelete', text = '▔', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
    changedelete = { hl = 'GitSignsChange', text = '▒', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
    untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
  },
})
EOF
nnoremap > :Gitsigns preview_hunk_inline<CR>
nnoremap <LEADER>gr :Gitsigns reset_hunk<CR>
nnoremap <LEADER>gb :Gitsigns blame_line<CR>
nnoremap <LEADER>g- :Gitsigns prev_hunk<CR>
nnoremap <LEADER>g= :Gitsigns next_hunk<CR>


" ==================== vim-calendar ====================
noremap \c :Calendar -position=here<CR>
noremap \\ :Calendar -view=clock -position=here<CR>
source ~/.cache/calendar.vim/credentials.vim
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	autocmd!
	" diamond cursor
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> h <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> H <Plug>(calendar_start_insert_head)
	" unmap <C-n>, <C-p> for other plugins
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>
augroup END


