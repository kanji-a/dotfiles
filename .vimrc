autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Quickfix
autocmd QuickfixCmdPost *grep* cwindow

" QuickRunの設定
let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright",
\       "outputter/buffer/close_on_empty" : 1
\   },
\}

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" fcitx

" 「日本語入力固定モード」の動作設定
let IM_CtrlMode = 6
" 「日本語入力固定モード」切替キー
inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>

" <ESC>押下後のIM切替開始までの反応が遅い場合はttimeoutlenを短く設定してみてください(ミリ秒)
set timeout timeoutlen=3000 ttimeoutlen=100
