" ==================================================
" バンドル
" ==================================================

" NeoBundleの設定
if has ('vim_starting')
  " vi互換を切る
  set nocompatible

  " neobundleをpathに追加
  set runtimepath+=~/.vim/bundle/neobundle.vim/

  " bundleの中身が返される
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" runtimepathに入れずにneobundleを追加する
NeoBundleFetch 'Shougo/neobundle.vim'


" 全体で使うもの
" 非同期ライブラリ
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \   'mac' : 'make -f make_mac.mak',
      \ }
      \ }

" 何をするにも必要
NeoBundle 'Shougo/unite.vim'

" 入力補完
NeoBundle 'Shougo/neocomplcache'

" スニペット
NeoBundle 'Shougo/neosnippet', {
      \ 'depends' : 'Shougo/neocomplcache'
      \ }
NeoBundle 'Shougo/neosnippet-snippets'

" vimのshell
NeoBundle 'Shougo/vimshell.vim', {
      \ 'depends' : 'Shougo/vimproc.vim'
      \ }

" ファイル操作をサポート
NeoBundle 'Shougo/vimfiler.vim', {
      \ 'depends' : 'Shougo/unite.vim'
      \ }

" runtimepathを管理
NeoBundle 'tpope/vim-pathogen'

" 非同期にコンパイラを動かしてquickfixに表示
NeoBundle 'tpope/vim-dispatch'

" 汎用的にシンタックスチェック
NeoBundle 'scrooloose/syntastic', {
      \ 'depends' : 'tpope/vim-pathogen'
      \ }

" ファイル移動
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'

" vimからgitを使う
NeoBundle 'tpope/vim-fugitive'

" 見た目を変える
NeoBundle 'itchyny/lightline.vim'

" 一文字検索を器用に設定する
NeoBundle 'kana/vim-smartchr'

" 登録したキーワードを入れ替える
NeoBundle 'AndrewRadev/switch.vim'

" yank履歴を見れるようにする
NeoBundle 'vim-scripts/YankRing.vim'

" コード実行
NeoBundle 'thinca/vim-quickrun'

" undo履歴を見る
NeoBundle 'mbbill/undotree'

" bufferを一覧する
NeoBundle 'troydm/easybuffer.vim'

" コメント関係
NeoBundle 'tomtom/tcomment_vim'

" text objectを自前で拡張
NeoBundle 'kana/vim-textobj-user'

" vimからhttp通信をやるときに
NeoBundle 'mattn/webapi-vim'

" 囲む
NeoBundle 'tpope/vim-surround'

" ハイライトする
NeoBundle 't9md/vim-quickhl'

" 見出しにジャンプ
NeoBundle 'Shougo/unite-outline'

" helpを引く
NeoBundle 'thinca/vim-ref'

" ドットコマンドの拡張
NeoBundleLazy 'tpope/vim-repeat', { 'autoload' : {
      \ 'mappings' : '.'
      \ }}

" helpを検索する
NeoBundleLazy 'Shougo/unite-help', { 'autoload' : {
      \ 'unite_sources' : 'help',
      \ }}

" カレントディレクトリを変更する
NeoBundleLazy 'kana/vim-tabpagecd', { 'autoload' : {
      \ 'unite_sources' : 'tab'
      \ }}



" 言語ごとの拡張

" vim script
" 変数を見やすくする
NeoBundleLazy 'thinca/vim-prettyprint', { 'autoload' : {
      \ 'filetypes' : 'vim',
      \ 'commands' : 'PP'
      \ }}

" Ruby
" rubyのsyntax
NeoBundleLazy 'vim-ruby/vim-ruby', { 'autoload' : {
      \ 'filetypes' : 'ruby',
      \ }}

" rails使うときに
NeoBundleLazy 'basyura/unite-rails', { 'autoload' : {
      \ 'filetypes' : 'ruby',
      \ }}

" 入力補助
NeoBundleLazy 'Shougo/neocomplcache-rsense', {
      \ 'depends' : 'Shougo/neocomplcache',
      \ 'autoload' : { 'filetypes' : 'ruby' }
      \ }

" rails使うときに
NeoBundleLazy 'tpope/vim-rails', { 'autoload' : {
      \ 'filetypes' : 'ruby'
      \ }}

" rspecのsyntax
NeoBundleLazy 'Keithbsmiley/rspec.vim', { 'autoload' : {
      \ 'filetypes' : 'rspec'
      \ }}

" vimからrspecを実行
NeoBundleLazy 'thoughtbot/vim-rspec', {
      \ 'depends' : 'tpope/vim-dispatch',
      \ 'autoload' : { 'filetypes' : 'rspec' }
      \ }

" rubyのキーワードをテキストオブジェクトにする
NeoBundleLazy 'rhysd/vim-textobj-ruby',{ 'autoload' : {
      \ 'filetypes' : 'ruby'
      \ }}

" requireの入力補助
" NeoBundleLazy 'rhysd/unite-ruby-require.vim', {'autoload' : {
      " \ 'filetypes' : 'ruby'
      " \ }}

" if...endとか、対応するやつに%でとべる
NeoBundleLazy 'vim-scripts/ruby-matchit', { 'autoload' : {
      \ 'filetypes' : 'ruby',
      \ }}

" ifを打つとendを入れてくれる
NeoBundleLazy 'tpope/vim-endwise', { 'autoload' : {
      \ 'filetypes' : ['ruby', 'c', 'lua','vim'],
      \ }}


" haskell
" インデント
NeoBundleLazy 'kana/vim-filetype-haskell', { 'autoload' : {
      \ 'filetypes' : 'haskell' }
      \ }

" 入力補助
NeoBundleLazy 'ujihisa/neco-ghc', { 'autoload' : {
      \ 'filetypes' : 'haskell' }
      \ }

" helpを引く
NeoBundleLazy 'ujihisa/ref-hoogle', { 'autoload' : {
      \ 'filetypes' : 'haskell'
      \ }}

" importを書きやすくする
NeoBundleLazy 'ujihisa/unite-haskellimport', { 'autoload' : {
      \ 'filetypes' : 'haskell'
      \ }}

" ハイライト
NeoBundleLazy 'dag/vim2hs', { 'autoload' : {
      \ 'filetypes' : 'haskell'
      \ }}

" エラーチェック
NeoBundleLazy 'eagletmt/ghcmod-vim', { 'autoload' : {
      \ 'filetypes' : 'haskell'
      \ }}

" haddockを参照
NeoBundleLazy 'eagletmt/unite-haddock', { 'autoload' : {
      \ 'filetypes' : 'haskell',
      \   'depends' : 'Shougo/unite.vim',
      \ }}

" lisp
" syntax
NeoBundle 'vim-scripts/slimv.vim', {'autoload' : {
      \ 'filetypes' : 'lisp'
      \ }}

" html, css
" emmet
NeoBundleLazy 'mattn/emmet-vim', { 'autoload' : {
      \ 'filetypes' : ['html', 'css', 'scss', 'erb']
      \ }}

" htmlのsyntax
NeoBundleLazy 'othree/html5.vim', { 'autoload' : {
      \ 'filetypes' : 'html'
      \ }}

" cssのsyntax
NeoBundleLazy 'hail2u/vim-css3-syntax', { 'autoload' : {
      \ 'filetypes' : 'css'
      \ }}

" vimからブラウザを操作
NeoBundleLazy 'tell-k/vim-browsereload-mac', { 'autoload' : {
      \ 'filetypes' : ['html', 'css', 'javascript','markdown','coffee','scss']
      \ }}

" js
" syntax
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload' : {
      \ 'filetypes' : 'javascript'
      \ }}

" 入力補助
NeoBundleLazy 'marijnh/tern_for_vim', { 'autoload' : {
      \ 'filetypes' : ['javascript','coffee']
      \ }}

" node
" jsをローカルで実行
NeoBundleLazy 'joyent/node', {'autoload' : {
      \ 'filetypes' : 'javascript'
      \ }}

" markdown
" markdownのシンタックス
NeoBundleLazy 'tpope/vim-markdown', { 'autoload' : {
      \ 'filetypes' : 'markdown'
      \ }}

" ブラウザでプレビューする
NeoBundleLazy 'tyru/open-browser.vim', { 'autoload' : {
      \ 'filetypes' : 'markdown'
      \ }}

" coffeescript
" coffeeのsyntax
NeoBundleLazy 'kchmck/vim-coffee-script', { 'autoload' : {
      \ 'filetypes' : 'coffee',
      \ }}


" その他の言語
" sassのシンタックス
NeoBundleLazy 'cakebaker/scss-syntax.vim',{ 'autoload' : {
      \ 'filetypes' : 'scss'
      \ }}

" hamlのsyntax
NeoBundleLazy 'tpope/vim-haml', { 'autoload' : {
      \ 'filetypes' : ['sass', 'haml', 'scss'],
      \ }}

" slimのsyntax
NeoBundleLazy 'slim-template/vim-slim', { 'autoload' : {
      \ 'filetypes' : 'slim'
      \ }}


" その他便利機能
" はてブをvimで書く
NeoBundleLazy 'moznion/hateblo.vim', { 'autoload' : {
      \   'filetypes' : 'text',
      \   'depends': ['mattn/webapi-vim', 'Shougo/unite.vim']
      \ }}


" ファイルタイプを入れる
filetype plugin indent on

" インストールチェック
NeoBundleCheck

" シンタックスを入れる
syntax enable


" ==================================================
" 基本設定
" ==================================================

" pathogenを入れる
execute pathogen#infect()

" 行番号を表示する
set number

" viminfoに情報を入れとく
" set viminfo=string

" 保存されてないファイルがあっても別のファイル開ける
set hidden

" ビープ音じゃなくてビジュアルベルを使う
set vi t_vb=

" vimの外でファイルが変更された時に自動で読み込む
set autoread

" ファイル名を出す
set title

" カーソル移動
set whichwrap=b,s,h,l,<,>,[,]

" BSをどこでも使えるように
set backspace=indent,eol,start

" ディレクトリもvimで開く
set browsedir=buffer

" ステータスライン
" ステータス行を常に表示する
set laststatus=2

" ステータスラインの内容を設定
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 最後に実行したコマンドを表示する
set showcmd

" 補完の候補をリスト表示
set wildmode=list,full

" コマンドモードで補完の候補を表示
set wildmenu

" 仮想編集。文字のない場所にもカーソルが当たる
set virtualedit=all

" 編集するファイル内にvimの設定を書ける
set modelines

" 対応するカッコが光る
set showmatch " 対応するカッコが光る

" 現在のモードを表示する
set showmode

" カーソルの位置を表示
set ruler

" カーソルの上下に最低表示する行数
set scrolloff=5

" クリップボードを使う
set clipboard=unnamed,autoselect

" 日本語でアルファベットの倍の幅を使う
if exists('&ambiwidth')
  set ambiwidth=double
endif

" splitとvsplitを使う
" splitで下に出す
set splitbelow

" vsplitで右に出す
set splitright

" スペース、タブ関連
" tabをスペース2つに設定
set tabstop=2

" tabを押すとスペース2つを入力
set softtabstop=2

" インデントをスペース2つに設定
set shiftwidth=2

" tab、<、>、入力時にインデントをする
set expandtab

" BS時にshiftwidth分のスペースを消す
set smarttab

" インデント
" 改行時に、カレント行のインデントをコピー
set autoindent

" プログラミング言語を自動インデント
set smartindent

" 検索
" 検索結果をハイライト
set hlsearch

" インクリメンタルサーチ
set incsearch

" 大文字小文字を区別しない
set ignorecase

" 大文字と小文字が混ざった時だけ区別する
set smartcase

" ファイルの最後まで検索したら上に戻らない
set nowrapscan

" エンコード
" vim内で使うエンコード
set encoding=utf-8

" 既存のファイルを読むエンコード
set fileencodings=utf8

" ターミナルのエンコード
set termencoding=utf-8

" ハイライトを設定する
highlight Pmenu ctermbg=4

" swpファイルの場所を指定
set directory-=.

" バックアップの設定
set backup
set backupdir=/tmp

" 不可視文字を可視化
set list
set lcs=tab:>-,trail:_,extends:>,precedes:<,nbsp:x


" 保存時に行末のスペースを削除
autocmd BufWritePre * :%s/\s*$//g

" 自動で入力されるコメントを削除
autocmd Filetype * set formatoptions-=ro

" ==================================================
" キーマッピング
" ==================================================

" mapleaderをセット
let mapleader = ","

" ノーマルモードのキーマッピング
" デフォルトのキーマッピングとぶつからないようにspace使う

" ハイライトを消す
nnoremap <Esc><Esc> :<C-u>noh<CR>

" カーソル移動
nnoremap <Space>j G
nnoremap <Space>k gg

" 記号
nnoremap <Space>a *
nnoremap <Space>p %

" ファイル編集
nnoremap <Space>w :<C-u>write<CR>
nnoremap <Space>e :<C-u>edit

" 設定ファイルを開く
nnoremap <Space>v :<C-u>tabnew ~/.vimrc<CR>
nnoremap <Space>s :<C-u>source ~/.vimrc<CR>
nnoremap <Space>zz :<C-u>tabnew ~/.zshrc<CR>
nnoremap <Space>ze :<C-u>tabnew ~/.zshenv<CR>
nnoremap <Space>za :<C-u>tabnew ~/.zshalias<CR>

nnoremap <Space>c :<C-u>ChromeReload<CR>

nnoremap ; :
nnoremap : ;

" 大文字でちょっと便利なキーマップ
nnoremap E A<Space>
nnoremap Y y$

" tabの扱い
nnoremap <C-x> :<C-u>tabclose<CR>
nnoremap <C-t> :<C-u>tabnew<CR>

" コマンドを繰り返す
nnoremap c. q:k<Cr>

" カーソルがのった単語をヤンクした文字列と入れ替え
nnoremap <silent> ciy ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> cy   ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>

" ウィンドウ関連
" カーソル移動
nnoremap sj <C-W>j
nnoremap sk <C-W>k
nnoremap sh <C-W>h
nnoremap sl <C-W>l
nnoremap so <C-W>o
nnoremap ss <C-W>s
nnoremap sc <C-W>c
nnoremap so <C-W>o

" 画面位置調整
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap ) <C-W>>
nnoremap ( <C-W><LT>

" インサートモード
" 全てのファイルタイプで使うキーマッピング

" これやらないと矩形ビジュアルモードで反映されない
inoremap <C-c> <Esc>

" カッコまわり
inoremap }} {}<Left><CR><ESC>O
inoremap { {}<Left>
inoremap )) ()<Left><CR><ESC>O
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap <> <><Left>
inoremap '' ''<Left>
inoremap " ""<Left>

" 記号のショートカット
inoremap <C-f> %
inoremap <C-d> $
inoremap <C-a> @
inoremap <C-w> &
inoremap <C-b> \
inoremap <C-p> +
inoremap <C-s> *

" tabで補完
inoremap <Tab> <C-x><C-o>

" ファイルタイプ指定のキーマッピング
autocmd FileType ruby,slim inoremap \|\| \|\|<Left>

" 比較演算子をperl風に書けるように
autocmd FileType ruby,coffee,python,vim,javascript inoreabbrev gt >
autocmd FileType ruby,coffee,python,vim,javascript inoreabbrev ge >=
autocmd FileType ruby,coffee,python,vim,javascript inoreabbrev lt <
autocmd FileType ruby,coffee,python,vim,javascript inoreabbrev le <=
autocmd FileType ruby,coffee,python,vim inoreabbrev eq ==
autocmd FileType ruby,coffee,python,vim inoreabbrev ne !=
autocmd FileType ruby inoreabbrev cmp <=>

" jsではこっち
autocmd FileType javascript inoreabbrev eq ===
autocmd FileType javascript inoreabbrev ne !==

" 代入演算子が打ちやすいように
inoreabbrev inc +=
inoreabbrev dec -=
inoreabbrev aeo *=
inoreabbrev seo /=
inoreabbrev peo %=

" nilガード
autocmd Filetype ruby inoreabbrev nilg \|\|=

" rubyのlambdaとcoffeeのfunction
autocmd Filetype ruby inoreabbrev la ->
autocmd FileType coffee inoreabbrev fc ->

" andとor
autocmd FileType javascript,vim inoreabbrev and &&
autocmd FileType javascript,vim inoreabbrev or \|\|

" 正規表現の演算子
autocmd FileType ruby inoreabbrev ma =~

" emmetがあるやつはtabでemmet展開
autocmd FileType html,css,erb,scss imap <Tab> <plug>(EmmetExpandAbbr)


" コマンドモードのキーマッピング
" cocoaチックに
cnoremap <C-h> <BS>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

" 記号
" \, $, ^ を出したいけど、アイデアがない
cnoremap <C-t> ~

" カレントへのパスを入力補助
" ディレクトリ
cmap <C-x> <C-r>=expand('%:p:h')<CR>/

" ファイル
cmap <C-z> <C-r>=expand('%:p:r')<CR>

" 検索のおまけをつけない
cnoremap <expr> /  getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ?  getcmdtype() == '?' ? '\?' : '?'


" ヴィジュアルモードのキーマッピング
vnoremap ; :
vnoremap : ;

" インデント変更
vnoremap < <gv
vnoremap > >gv


" ==================================================
" ファイルタイプ
" ==================================================

" デフォルトにないファイルタイプを定義
autocmd BufNewFile,BufRead *_spec.rb set filetype=rspec
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.sass set filetype=sass
autocmd BufNewFile,BufRead *.scss set filetype=scss
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd BufNewFile,BufRead *.slim set filetype=slim
autocmd BufNewFile,BufRead *.asd  set filetype=lisp


" ==================================================
" ページタブ
" ==================================================

" タブ移動
nnoremap <C-h> gT
nnoremap <C-l> gt

" ページ上部にタブラインを表示する
set showtabline=2
set tabline=%!MakeTabLine()

function! MakeTabLine()
    let titles = map(range(1, tabpagenr('$')), 's:tabpage_label(v:val)')
    let tabpages = join(titles) . ' ' . '%#TabLineFill#%T'
    let info = fnamemodify(getcwd(), ":~") . ' '
    return tabpages . '%=' . info
endfunction

function! s:tabpage_label(n)
    let bufnrs = tabpagebuflist(a:n)

    let hi = a:n is tabpagenr() ? '%#TabLineSel#' : '%#TabLine#'

    let no = len(bufnrs)
    if no is 1
        let no = ''
    endif

    let mod = len(filter(copy(bufnrs), 'getbufvar(v:val, "&modified")')) ? '+' : ''
    let sp = (no . mod) ==# '' ? '' : ' '

    let curbufnr = bufnrs[tabpagewinnr(a:n) - 1]
    let fname = pathshorten(bufname(curbufnr))

    let label = ' ' . no . mod . sp . fname

    return '%' . a:n . 'T' . hi . label
endfunction

" タブラインをハイライトする
highlight TabLine term=reverse cterm=reverse ctermfg=white ctermbg=black
highlight TabLineSel term=bold cterm=bold,underline ctermfg=6
highlight TabLineFill term=reverse cterm=reverse ctermfg=white ctermbg=black


" ==================================================
" quickhl
" ==================================================

let b:surround_123 = "+{ \r }"

nmap <Space>m <Plug>(quickhl-toggle)
xmap <Space>m <Plug>(quickhl-toggle)
nmap <Space>M <Plug>(quickhl-reset)


" ==================================================
" surround.vim
" ==================================================

" ダブルクォート
nmap <leader>q <Plug>Csurround w"
imap <leader>q <ESC><Plug>Csurround w"<Right>wa

" シングルクォート
nmap <leader>sq <Plug>Csurround w'
imap <leader>sq <ESC><Plug>Csurround w'<Right>wa

" ()
nmap <leader>p <Plug>Csurround w)
imap <leader>p <ESC><Plug>Csurround w)<Right>wa

" []
nmap <leader>sb <Plug>Csurround w]
imap <leader>sb <ESC><Plug>Csurround w]<Right>wa


" ==================================================
" neocomplcache.vim
" ==================================================

" neocomplcacheを使う
let g:neocomplcache_enable_at_startup = 1

" アンダースコアで補完
let g:neocomplcache_enable_underbar_completion = 1

" オブジェクトとして扱う最小文字数を設定
" デフォルトは4
let g:neocomplcache_min_syntax_length = 3

" 自動でロックするバッファ名のパターンを指定
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" ディレクトリ指定
let g:neocomplcache_temporary_dir = "$HOME/.vim/tmp/neocomplcache"

let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }

" dictionaryのファイル指定
" dictを作ったらコメントアウトやめる
" let g:neocomplcache_dictionary_filetype_lists = {
    " \ 'default' : '',
    " \ 'perl' : $HOME . '/.vim/dict/perl.dict',
    " \ 'javascript' : $HOME . '/.vim/dict/javascript.dict',
    " \ 'html' : $HOME . '/.vim/dict/javascript.dict',
    " \ 'scala' : $HOME . '/.vim/dict/scala.dict',
    " \ 'ruby' : $HOME . '.vim/dict/ruby.dict',
    " \ 'python' : $HOME . '.vim/dict/python.dict',
    " \ 'objc' : $HOME . '.vim/dict/objc.dict',
    " \ }

" キーワードを貯める
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif

let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" スニペット
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-k>"

" スニペット開ける
smap <C-k> <Plug>(neocomplcache_snippets_expand)

" スニペットのディレクトリ指定
let g:neocomplcache_snippets_dir = "~/.vim/snippets"

" キーマップ
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" 推薦のキーマップ
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
inoremap <expr><BS> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPopみたいに動かす
let g:neocomplcache_enable_auto_select = 1

inoremap <expr><C-h> pumvisible() ? neocomplcache#cancel_popup()."\<C-h>" : "\<C-h>"
inoremap <expr><BS> pumvisible() ? neocomplcache#cancel_popup()."\<C-h>" : "\<C-h>"

" オムニ補完
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" オムニ補完貯める
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" jsの補完でjscomplete使う
let g:neocomplcache_source_rank = {
      \ 'jscomplete' : 500,
      \ }

" domを入れる
let g:jscomplete_use = ['dom']


" ==================================================
" バックスラッシュでホームディレクトリ出す
" ==================================================

" コマンドモードでバックスラッシュをホームディレクトリにする
function! HomedirOrBackslash()
  if getcmdtype() == ':' && (getcmdline() =~# '^e ' || getcmdline() =~? '^r\?!' || getcmdline() =~? '^cd ' || getcmdline() =~? '^tabnew ' || getcmdline() =~? '^source ')
    return '~/'
  else
    return '\'
  endif
endfunction

cnoremap <expr> <Bslash> HomedirOrBackslash()


" ==================================================
" 表示設定
" ==================================================

" 表示設定を保存
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif

" 表示設定を読み込む
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif

" バッファーのオプションは保存しない
set viewoptions-=options


" ==================================================
" NeoBundle
" ==================================================

" アップデートとかを楽にする
nnoremap <Space>bi :<C-u>NeoBundleInstall<CR>
nnoremap <Space>bc :<C-u>NeoBundleClean<CR>
nnoremap <Space>bu :<C-u>NeoBundleUpdate<CR>


" ==================================================
" quickrun
" ==================================================

" <space>qで起動
nnoremap <Space>q :<C-u>QuickRun<CR>

let g:quickrun_config = {
      \ "_" : {
      \   "runner": "vimproc",
      \   "runner/vimproc/updatetime": 10,
      \}
      \}

" coffee script
" 実行結果を出すことにした

" コンパイル結果のjsを出す
"let g:quickrun_config['coffee'] = {
"  \ 'command' : 'coffee',
"  \ 'exec' : ['%c -cbp %s']
"  \ }

" マークダウンをブラウザでプレビューする
let g:quickrun_config['markdown'] = {
      \    'outputter': 'browser'
      \ }


" ==================================================
" unite.vim
" ==================================================

" <space>uで呼び出し
nnoremap [unite] <Nop>
xnoremap [unite] <Nop>
nmap <Space>u [unite]
xmap <Space>u [unite]

" キーマップ
" どこでも使うもの
nnoremap [unite]f :<C-u>Unite file<CR>
nnoremap [unite]b :<C-u>Unite buffer<CR>
nnoremap [unite]m :<C-u>Unite file_mru<CR>
nnoremap [unite]s :<C-u>Unite -buffer-name=search line -start-insert<CR>
nnoremap [unite]n :<C-u>Unite file/new<CR>
nnoremap [unite]dn :<C-u>Unite directory/new<CR>
nnoremap [unite]dm :<C-u>Unite directory_mru<CR>
nnoremap [unite]h :<C-u>Unite history/yank<CR>
nnoremap [unite]c :<C-u>Unite change<CR>
nnoremap [unite]t :<C-u>Unite tab<CR>
nnoremap [unite]km :<C-u>Unite mapping<CR>
nnoremap [unite]ms :<C-u>Unite menu:shortcut<CR>

" rails
nnoremap [unite]rr :<C-u>Unite ruby/require<CR>
nnoremap [unite]ri :<C-u>Unite ref/ri<CR>
nnoremap [unite]mo :<C-u>Unite rails/model<CR>
nnoremap [unite]ct :<C-u>Unite rails/controller<CR>
nnoremap [unite]vi :<C-u>Unite rails/view<CR>
nnoremap [unite]he :<C-u>Unite rails/helper<CR>
nnoremap [unite]li :<C-u>Unite rails/lib<CR>
nnoremap [unite]db :<C-u>Unite rails/db<CR>
nnoremap [unite]cf :<C-u>Unite rails/config<CR>
nnoremap [unite]js :<C-u>Unite rails/javascript<CR>
nnoremap [unite]cs :<C-u>Unite rails/stylesheet<CR>
nnoremap [unite]ge :<C-u>Unite rails/bundled_gem<CR>
nnoremap [unite]ro :<C-u>Unite rails/route<CR>
nnoremap [unite]rt :<C-u>Unite rails/root<CR>


" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')

au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')

" /をuniteで検索するようにする
" 普通の/でいくことにした
" nnoremap <silent> / :<C-u>Unite -buffer-name=search line/fast -start-insert -no-quit<CR>

" menu:shortcutの一覧
let g:unite_source_menu_menus = {
      \  'shortcut' : {
      \    'description' : 'shortcuts',
      \    'command_candidates' : [
      \      ['edit vimrc', 'tabnew ~/.vimrc'],
      \      ['edit gvimrc', 'tabnew ~/.gvimrc'],
      \      ['recent open file', 'Unite file_mru'],
      \      ['open file', 'Unite file'],
      \      ['git status', 'Gstatus'],
      \      ['git add', 'Gwrite'],
      \      ['git commit', 'Gcommit'],
      \      ['git diff', 'Gdiff'],
      \      ['git log', 'Glog'],
      \      ['git push', 'Git push'],
      \      ['read ri', 'Unite ref/ri'],
      \      ['[Rails]open model', 'Unite rails/model'],
      \      ['[Rails]open controller', 'Unite rails/controller'],
      \      ['[Rails]open view', 'Unite rails/view'],
      \      ['[Rails]open helper', 'Unite rails/helper'],
      \      ['[Rails]open lib', 'Unite rails/lib'],
      \      ['[Rails]open database', 'Unite rails/db'],
      \      ['[Rails]open config', 'Unite rails/config'],
      \      ['[Rails]open javascript', 'Unite rails/javascript'],
      \      ['[Rails]open css', 'Unite rails/stylesheet'],
      \      ['[Rails]open gemfile', 'Unite rails/bundled_gem'],
      \      ['[Rails]open route', 'Unite rails/route'],
      \      ['[Rails]open root', 'Unite rails/root'],
      \     ],
      \  },
      \}

" デフォルトでタブで開く
call unite#custom#default_action('file, buffer', 'tabopen')


" ==================================================
" browserreload-mac
" ==================================================

" キーマップ
autocmd Filetype html,css,javascript,markdown,coffee,scss nnoremap <Space>sta :<C-u>ChromeReloadStart<CR>
autocmd Filetype html,css,javascript,markdown,coffee,scss nnoremap <Space>sto :<C-u>ChromeReloadStop<CR>

" chromeでファイル開ける
autocmd Filetype html,css,javascript,markdown,coffee,scss nnoremap <Space>oc :<C-u>!open -a Google\ Chrome %<CR><CR>

" ブラウザ起動後、フォーカスをitermに合わせる
let g:returnApp = "iTerm"


" ==================================================
" vimshell
" ==================================================

" キーマップ
nnoremap ,is :<C-u>VimShell<CR>
nnoremap ,ipy :<C-u>VimShellInteractive python<CR>
nnoremap ,pry :<C-u>VimShellInteractive pry<CR>


" ==================================================
" NERDTree
" ==================================================

" キーマップ
" <space>nでトグルする
nnoremap <Space>n :<C-u>NERDTreeTabsToggle<CR>


" ==================================================
" vim-rspec
" ==================================================

" キーマップ
autocmd Filetype rspec nnoremap [rspec] <Nop>
autocmd Filetype rspec xnoremap [rspec] <Nop>
autocmd Filetype rspec nmap <Space>r [rspec]
autocmd Filetype rspec xmap <Space>r [rspec]

" スペック実行
autocmd Filetype rspec nnoremap [rspec]c :call RunCurrentSpecFile()<CR>
autocmd Filetype rspec nnoremap [rspec]n :call RunNearestSpec()<CR>
autocmd Filetype rspec nnoremap [rspec]l :call RunLastSpec()<CR>
autocmd Filetype rspec nnoremap [rspec]a :call RunAllSpecs()<CR>


" ==================================================
" lisp
" ==================================================

" カッコのバランスを保つ
let g:paredit_mode=1
let g:paredit_electric_return = 0

" lispタグ生成
function! s:generate_lisp_tags()
  let g:slimv_ctags = 'ctags -a -f '.$HOME.'/.vim/tags/lisp.tags'.expand('%:p').' --language-force=Lisp'
  call SlimvGenerateTags()
endfunction

command! -nargs=0 GenerateLispTags call <SID>generate_lisp_tags()

function! s:generate_lisp_tags_recursive()
  let g:slimv_ctags = 'ctags -a -f '.$HOME.'/.vim/tags/lisp.tags -R '.expand('%:p:h').' --language-force=Lisp'
  call SlimvGenerateTags()
endfunction

command! -nargs=0 GenerateLispTagsRecursive call <SID>generate_lisp_tags_recursive()

" replのウィンドウを右に出す
let g:slimv_repl_split = 4

" replバッファーの名前
let g:slimv_repl_name = 'REPL'

" replバッファーで特別なキーバインドやらない
let g:slimv_repl_simple_eval = 0

" lispのコンパイラのパス
let g:slimv_lisp = '/usr/local/bin/clisp'

" lispの方言
let g:slimv_impl = 'clisp'

" 方言はclispを優先する
let g:slimv_preferred = 'clisp'

" swankサーバーを起動
let g:slimv_swank_cmd = '!osascript -e "tell application \"iTerm\" to do script \"clisp '.$HOME.'/.vim/bundle/slimv/slime/start-swank.lisp\""'

" カッコを虹色で表示
" うざくなったら消す
let g:lisp_rainbow=1


" ==================================================
" unite-ruby-require.vim
" ==================================================

" requireするパスを指定
let g:unite_source_ruby_require_cmd = '$HOME/.rbenv/shims/ruby'


" ==================================================
" fugitive
" ==================================================

" キーマップ
nnoremap [git] <Nop>
xnoremap [git] <Nop>
nmap <Space>g [git]
xmap <Space>g [git]

nnoremap [git]st :<C-u>Gstatus<CR>
nnoremap [git]ad :<C-u>Gwrite<CR>
nnoremap [git]ci :<C-u>Gcommit<CR>
nnoremap [git]lg :<C-u>Glog<CR>
nnoremap [git]df :<C-u>Gdiff<CR>
nnoremap [git]ps :<C-u>Git push<CR>


" ==================================================
" vim-coffee-script
" ==================================================

"taglistの設定
let g:tlist_coffee_settings = 'coffee;f:function;v:variable'

"保存時にコンパイルする
autocmd BufWritePost *.coffee silent make -c


" ==================================================
" switch.vim
" ==================================================

" !でswitchを動かす
nnoremap ! :Switch<CR>

" rubyのときのswitch
autocmd FileType ruby let b:switch_custom_definitions =
      \ [
      \   ['if', 'unless'],
      \   ['include', 'extend'],
      \   ['while', 'until'],
      \   ['class', 'module'],
      \   ['any?', 'all?'],
      \   ['attr_accessor', 'attr_reader', 'attr_writer'],
      \   ['first', 'last'],
      \   ['push', 'pop'],
      \   ['shift', 'unshift'],
      \   ['index', 'rindex'],
      \   ['has_key?', 'has_value?'],
      \   ['one?', 'none?'],
      \   ['protected_methods', 'public_methods', 'private_methods'],
      \   ['instance_variables_get', 'instance_variables_set'],
      \   ['upto', 'downto'],
      \   ['upcase', 'downcase'],
      \   ['start_with?', 'end_with?'],
      \   ['partition', 'rpartition'],
      \   ['eval', 'instance_eval'],
      \   ['send', 'public_send'],
      \   ['true', 'false'],
      \   ['and', 'or'],
      \   ['<', '>', '<=', '>='],
      \   ['odd?', 'even?'],
      \   ['chr', 'ord'],
      \   ['floor', 'ceil', 'round'],
      \ ]

" javascriptのときのswitch
autocmd FileType javascript let b:switch_custom_definitions =
      \ [
      \   ['&&', '||'],
      \   ['++', '--'],
      \   ['===', '!=='],
      \   ['true', 'false'],
      \   ['addClass', 'removeClass', 'toggleClass'],
      \   ['push', 'pop'],
      \   ['bind', 'unbind'],
      \   ['window', 'document'],
      \   ['before', 'after'],
      \   ['ajaxStart', 'ajaxStop'],
      \   ['ajaxError', 'ajaxSuccess'],
      \   ['fire', 'fired', 'fireWith'],
      \   ['pageX', 'pageY'],
      \   ['stopImmediatePropagetion', 'stopPropagation', 'preventDefault'],
      \   ['fadeIn', 'fadeOut', 'fadeToggle'],
      \   ['focusIn', 'focusOut'],
      \   ['mouseenter', 'mouseleave', 'hover'],
      \   ['innerHTML', 'outerHTML'],
      \   ['innerWidth', 'innerHeight'],
      \   ['outerWidth', 'outerHeight'],
      \   ['nth-child', 'nth-last-child'],
      \   ['on', 'off'],
      \   ['parseJSON', 'parseHTML', 'parseXML'],
      \   ['keydown', 'keypress', 'keyup'],
      \   ['attr', 'removeAttr'],
      \   ['scroll', 'scrollLeft', 'scrollTop'],
      \   ['hide', 'show'],
      \   ['slideDown', 'slideUp', 'slideToggle'],
      \ ]

" cssのswitch
autocmd FileType css let b:switch_custom_definitions =
      \ [
      \   ['border-top', 'border-bottom'],
      \   ['border-left', 'border-right'],
      \   ['border-left-width', 'border-right-width'],
      \   ['border-top-width', 'border-bottom-width'],
      \   ['border-left-style', 'border-right-style'],
      \   ['border-top-style', 'border-bottom-style'],
      \   ['margin-left', 'margin-right'],
      \   ['margin-top', 'margin-bottom'],
      \   ['padding-left', 'padding-right'],
      \   ['padding-top', 'padding-bottom'],
      \   ['margin', 'padding'],
      \   ['min-width', 'max-width'],
      \   ['min-height', 'max-height'],
      \   ['height', 'width'],
      \   ['absolute', 'relative', 'fixed'],
      \   ['none', 'block'],
      \   ['overflow', 'overflow-x', 'overflow-y'],
      \   ['left', 'right'],
      \   ['top', 'bottom'],
      \   ['before', 'after'],
      \   ['transition', 'animation'],
      \   ['em', 'px', '%'],
      \   ['white', 'black', 'gray'],
      \ ]


" ==================================================
" syntastic
" ==================================================

" rubyのチェックにrubocopを使おうと思っていた時期があった
"let g:syntastic_ruby_checkers = ['rubocop']
"let g:syntastic_quiet_warnings = 0


" ==================================================
" vim-rails
" ==================================================

" neosnippet使う
autocmd User Rails.view* NeoSnippetSource ~/.vim/snippet/ruby.rails.view.snip
autocmd User Rails.controller* NeoSnippetSource ~/.vim/snippet/ruby.rails.controller.snip
autocmd User Rails/db/migrate/* NeoSnippetSource ~/.vim/snippet/ruby.rails.migrate.snip
autocmd User Rails/config/routes.rb NeoSnippetSource ~/.vim/snippet/ruby.rails.routes.snip

" いつ、なぜ入れたかわからんｗ
" 調査中
let g:rails_level=4
let g:rails_default_file='app/controllers/application.rb'
let g:rails_default_database='sqlite3'


" ==================================================
" YankRing
" ==================================================

" yank履歴を見れるようにする
nnoremap <C-y> :YRShow<CR>


" ==================================================
" undotree
" ==================================================

" undo履歴を見れるようにする
nnoremap <C-u> :<C-u>UndotreeToggle<CR>

" undotreeの設定
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_WindowLayout = 'topleft'
let g:undotree_SplitWidth = 35
let g:undotree_DiffAutoOpen = 1
let g:undotree_RelativeTimestamp = 1
let g:undotree_TreeNodeShape = "*"
let g:undotree_HighlightChangedText = 1


" ==================================================
" easybuffer
" ==================================================

" キーマップ
nnoremap <Space>b :<C-u>EasyBuffer<CR>


" ==================================================
" smartchr
" ==================================================

" ,を入力したらスペース入れる
inoremap <expr>, smartchr#loop(', ', ',')

" ,の後にスペース入れてほしくないもの
autocmd Filetype vim inoremap <expr>, smartchr#loop(',', ', ')

" =でもスペース入れる
autocmd Filetype ruby inoremap <expr>= smartchr#one_of(' = ', ' => ', '=~','=')
autocmd Filetype javascript,coffee inoremap <expr>= smartchr#one_of(' = ', '=')
autocmd Filetype slim inoremap <expr>= smartchr#one_of('= ', '=')

" slimのときに-でスペース入れる
autocmd Filetype slim inoremap <expr>- smartchr#one_of('- ', '-')

" coffeeのときに-で->を作る
autocmd Filetype coffee inoremap <expr>- smartchr#one_of('-', '->')

" :でもスペース入れる
autocmd Filetype css,scss inoremap <expr>: smartchr#one_of(': ',  ':')

" +を+=と行き来
" autocmd Filetype ruby inoremap <expr>+ smartchr#loop(' + ',  ' += ', '+', '+=')
" autocmd Filetype javascript inoremap <expr>+ smartchr#loop(' + ',  '++',  ' += ', '+',  ' ++ ', '+=')
" autocmd Filetype ruby inoremap <expr>- smartchr#loop(' - ',  ' -= ',  '-',  '-=')
" autocmd Filetype javascript inoremap <expr>- smartchr#loop(' - ',  '--',  ' -= ', '-',  ' -- ')
" autocmd Filetype ruby,javascript inoremap <expr>* smartchr#loop(' * ',  ' *= ',  '*',  '*=')

" htmlとか、イコールにくっついてほしいものは明示
autocmd Filetype html,haml inoremap <expr>= smartchr#one_of('=',  ' = ')

" ==================================================
" emmet
" ==================================================

" html, css, scss, erbで使用する
let g:user_emmet_settings = {
      \   'html' : {
      \     'filters' : 'html',
      \    },
      \   'css' : {
      \     'filters' : 'fc',
      \   },
      \   'scss' : {
      \     'extends' : 'css',
      \     'filters' : 'fc',
      \   },
      \   'erb' : {
      \     'extends' : 'html',
      \     'filters' : 'html',
      \   },
      \ }


" ==================================================
" tcomment_vim
" ==================================================

" コメントをノーマルモードでは<C-c>でトグルする
nnoremap <C-c> :<C-u>TComment<CR>

" ヴィジュアルモードでは<C-t>でトグルする
" 書き方がわからんｗｗｗ
" vnoremap <C-t> gc

" デフォルトにないfiletypeのコメントを追加
if !exists('g:tcomment_types')
  let g:tcomment_types = {}
endif

let g:tcomment_types['rspec'] = '# %s'
let g:tcomment_types['scss'] = '// %s'
let g:tcomment_types['coffee'] = '# %s'
let g:tcomment_types['slim'] = '/! %s'

" ==================================================
" はてなブログ
" ==================================================

" <space>hではてなの機能を使う
autocmd Filetype text nnoremap [hatena] nop
autocmd Filetype text nmap <Space>h [hatena]
autocmd Filetype text nnoremap [hatena]cr :HatebloCreate<CR>
autocmd Filetype text nnoremap [hatena]cd :HatebloCreateDraft<CR>
autocmd Filetype text nnoremap [hatena]l :HatebloList<CR>
autocmd Filetype text nnoremap [hatena]u :HatebloUpdate<CR>
autocmd Filetype text nnoremap [hatena]d :HatebloDelete<CR>

" はてな記法入力支援
autocmd Filetype text inoreabbrev bq >><CR><<<ESC>
autocmd Filetype text inoreabbrev pre >\|<CR>\|<<ESC>
autocmd Filetype text inoreabbrev synpre >\|\|<CR>\|\|<<ESC><Up><Left>


" ==================================================
" Scss
" ==================================================

" scssと同じファイル名でcssにコンパイル
function s:compile_scss()
  !sass % %:r.css
endfunction

" scss保存時にcssにコンパイル
" <SID>はスクリプトスコープの関数を呼ぶのに必要
autocmd BufWritePost *.scss call <SID>compile_scss()


" ==================================================
" lightline
" ==================================================

let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'DisplayReadOnly',
      \   'modified': 'DisplayModified',
      \   'fugitive': 'DisplayBranchName',
      \   'filename': 'DisplayFileName'
      \ },
      \ 'separator': { 'left': '>', 'right': '<' },
      \ 'subseparator': { 'left': '>', 'right': '<'}
      \ }

" readonlyの表示
function! DisplayReadOnly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "RO"
  else
    return ""
  endif
endfunction

" modifiedの表示
function! DisplayModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

" gitのbranch名の表示
function! DisplayBranchName()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '*'._ : ''
  endif

  return ''
endfunction

" ファイル名の表示
function! DisplayFileName()
  return  ('' != DisplayReadOnly() ? DisplayReadOnly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != DisplayModified() ? ' ' . DisplayModified() : '')
endfunction
