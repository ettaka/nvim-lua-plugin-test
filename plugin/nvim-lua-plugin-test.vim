fun! TestPlugin()
	lua for k in pairs(package.loaded) do if k:match("^nvim%-lua%-plugin%-test") then package.loaded[k] = nil end end
	lua require("nvim-lua-plugin-test").test()
endfun

let g:global_test_var = "test"
