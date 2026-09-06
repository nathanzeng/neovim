" Vim syntax file
" Language:		Directory listing
" Maintainer:		The Nvim Project <https://github.com/neovim/neovim>

if exists("b:current_syntax")
  finish
endif

syn match directoryDirectory ".*/$"

hi def link directoryDirectory Directory

if !has('win32')
  syn match directoryHidden "^\..*$"
  hi def link directoryHidden Comment
endif

let b:current_syntax = "directory"
