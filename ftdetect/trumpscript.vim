au BufNewFile,BufRead *.tr set ft=trumpscript
au BufNewFile,BufRead * if getline('$') =~? "america is great" | setl ft=trumpscript | endif
