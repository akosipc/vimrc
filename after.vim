color vividchalk
set t_Co=256
set wrap
set number
set mouse=ia
set clipboard=unnamed

syntax enable

ino jj                <esc>
ino kk                <esc>
nn <tab>              <c-w>w
nn <leader>a          ggVG
nn <leader>y          yy
nn <leader>qq         :qa!<cr>
nn <leader>wq         :wqa<cr>
nn <leader>vs         <c-w>v
nn <leader>hs         :split<cr>
nn <leader>gb         :Gblame<cr>
nn <leader>gs         :Gstatus<CR>
nn <leader>gd         :Gdiff<cr>
nn <leader>ga         :Git add .<cr>
nn <leader>gc         :Git commit -av<cr>
nn <leader>n          :NERDTreeToggle<cr>
nn <leader>lo         iLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
nn <leader>sl         iThe path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.
nn <leader>t          :tabnew<cr>
nn <leader>tq         :tabclose<cr>
nn <leader>yr         :YRShow<cr>
nn <leader>st         :Scratch<cr>
nn <leader>sr         :ScreenShellVertical<CR>
nn <leader>run        :call ScreenShellSend("clear && spring rspec --format=doc ".@%)<CR>
nn <leader>sx         :ScreenQuit<CR>
nn <leader>fzf        :FZF<CR>
nn <leader>np         :set nopaste<CR>
nn <leader>pp         :set paste<cr>

nn <leader>"          I"<esc>Ea"<esc>
nn <leader>'          I'<esc>Ea'<esc>
nn <leader>{          I{<esc>Ea}<esc>
nn <leader>]          I[<esc>Ea]<esc>
nn <leader>(          I(<esc>Ea)<esc>

nn <leader><leader>"  I"<esc>A"<esc>
nn <leader><leader>'  I'<esc>A'<esc>
nn <leader><leader>{  I{<esc>A}<esc>
nn <leader><leader>[  I[<esc>A]<esc>
nn <leader><leader>(  I(<esc>A)<esc>

nn <leader><leader>run :TestFile<CR>
nn <leader><leader>rul :TestLast<CR>
nn <leader><leader>rut :TestNearest<CR>

nn <C-p> :FZF<CR>

au BufRead,BufNewFile *.deface  set filetype=html
au BufRead,BufNewFile *.ejs     set filetype=html
au BufRead,BufNewFile *.embled  set filetype=html
au BufRead,BufNewFile *.eex     set filetype=html
au BufRead,BufNewFile *.less    set filetype=scss
au BufRead,BufNewFile *.ts      set filetype=typescript
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile *.ts setfiletype javascript
autocmd FileType *.jsx setlocal commentstring={/*\ %s\ */}


vmap <C-c>            :w !pbcopy<cr><cr>
imap <C-x>            <Esc>:set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
nmap <C-x>            i<C-x>

let CoVim_default_name = 'akosipc'
let CoVim_default_port = '63363'

let g:ctrlp_custom_ignore = 'node_modules\|tmp\|coverage\|_build\|deps\|ios\|android\|cookbooks\|sorbet'

let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellQuitOnVimExit = 1
let g:ScreenShellWidth = 70

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
