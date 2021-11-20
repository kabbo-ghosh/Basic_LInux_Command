vim.cmd[[
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
]]
-- bind using lua
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map("n", "<C-s>", ":w<CR>", {noremap = true})
map("n", "<C-q>", ":q<CR>", {noremap = true})
map("n","<C-a>","gg0vG$y<CR>", {noremap=true})

