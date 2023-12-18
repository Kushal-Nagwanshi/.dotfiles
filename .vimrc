" This only works in command line as gui applications have Alt + E already for
" gui related stuff so now trying out Alt + D instead.

nnoremap <a-d> a
inoremap <a-d> <esc>
vnoremap <a-d> <esc>

"inoremap <A-d> <Esc>
"vnoremap <A-d> <Esc>

"0f}xf<g@l

" sets mapleader to <Space>
let mapleader = " "
let maplocalleader = "\\"

nnoremap <leader>pv <cmd>Ex<cr>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

"--[[
"nnoremap "<leader>vwm", function()
"    require("vim-with-me").StartVimWithMe()
"end)
"nnoremap "<leader>svwm", function()
"    require("vim-with-me").StopVimWithMe()
"end)
"]]

"-- greatest remap ever
xnoremap <leader>p "_dP
nnoremap <leader>p "*p
vnoremap <leader>p "*p

nnoremap <leader>p "*p
vnoremap <leader>p "*p

"-- next greatest remap ever : asbjornHaland
"-- Here "*y  is for copying from the Global register *   and "+
nnoremap <leader>y "*y
vnoremap <leader>y "*y
nnoremap <leader>Y "*Y

nnoremap <leader>d "_d
vnoremap <leader>d "_d

"-- This is going to get me cancelled
inoremap <C-c>, <Esc>

" As far as I know <nop> stops recording ??!
nnoremap Q <nop>
nnoremap <C-f> <cmd>silent !tmux neww ~/.dotfiles/tmux-sessionizer<cr>
nnoremap <leader>f vim.lsp.buf.format

nnoremap <C-k> <cmd>cnext<cr>zz
nnoremap <C-j> <cmd>cprev<cr>zz
nnoremap <leader>k <cmd>lnext<cr>zz
nnoremap <leader>j <cmd>lprev<cr>zz

nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <silent> <leader>x <cmd>!chmod +x %<cr>

nnoremap <leader>vpp <cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<cr>
nnoremap <leader>mr <cmd>CellularAutomaton make_it_rain<cr>

nnoremap <leader><leader> <cmd>so ./.vimrc<cr>


"----------------------------------------------------------"
" :Ex is for opening default file Explorer in vim which is netrw
nnoremap <leader>pv <cmd>Ex<cr>

"------ Indents and tabs ------"

set autoindent                  " set the cursor at same indent as line above
set smartindent                 " try to be smart about indenting (C-style)
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                " spaces for each step of (auto)indent
set softtabstop=4               " set virtual tab stop (compat for 8-wide tabs)
set tabstop=8                   " for proper display of files with tabs
set shiftround                  " always round indents to multiple of shiftwidth
set copyindent                  " use existing indents for new indents
set preserveindent              " save as much indent structure as possible
filetype plugin indent on       " load filetype plugins and indent settings


" Disabling bell sounds
" Disables audio bells
set belloff=all

set fileformats=unix,dos,mac	"support all three newline formats



"-------------------------------------General stuff------------------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" turn relative line numbers on
set relativenumber
set rnu

"   Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
set ttimeout
set ttimeoutlen=1
set ttyfast
