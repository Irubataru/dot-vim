"
"" - Commands to run when files are created/opened/saved/closed -
"

function! ModifyHeader()
  let current_cursor_pos = getcurpos()
  call cursor(1,1)

  let date_line_no = search("Modified:", '', 4)
  if date_line_no != 0
    exe "s/Modified:.*/Modified: " .strftime("%c")
  else
    echom "No code header"
  endif

  call setpos('.', current_cursor_pos)
endfunction


"autocmd bufnewfile *.cpp so /home/glesaaen/.vim/headers/cppheader.txt
"autocmd bufnewfile *.cpp exe "1," . 3 . "g/Created:.*/s//Created: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cpp call ModifyHeader()

"autocmd bufnewfile *.{h,hpp} exe ":HeaderguardAdd"
"autocmd bufnewfile *.{h,hpp} so /home/glesaaen/.vim/headers/hheader.txt
"autocmd bufnewfile *.{h,hpp} exe "1," . 3 . "g/Created:.*/s//Created: " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.{h,hpp} call ModifyHeader()
