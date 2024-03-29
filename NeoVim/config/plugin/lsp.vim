set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

fun! LspLocationList()
    lua vim.diagnostic.setloclist({open = false})
    :Telescope loclist
endfun

nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap D :lua vim.lsp.buf.type_definition()<CR>
nnoremap =i :lua vim.lsp.buf.formatting()<CR>
nnoremap ]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap [d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>sd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>ll :call LspLocationList()<CR>


let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true

