local wk = require("which-key")
local mappings = {
		x = {":bdelete<cr>", "Close"},
		t = {":Test<cr>", "TEST"},
		s = {":Submit<cr>" , "Submit"},
		f = {":Telescope find_files<cr>", "Telescope Find Files"},
		r = {":Telescope live_grep<cr>", "Telescope Live Grep"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
