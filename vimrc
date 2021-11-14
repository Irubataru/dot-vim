set nocompatible
filetype plugin on

" Get plugins using Plug
call plug#begin("~/.vim/extensions")

" TODO Plugins
" https://github.com/wbthomason/packer.nvim

" General plugins
Plug 'tpope/vim-repeat'     " Enable repeating supported plugin maps with .
Plug 'tpope/vim-surround'   " quoting/parenthesizing made simple
Plug 'tpope/vim-unimpaired' " Pairs of handy bracket mappings
Plug 'tpope/vim-dispatch'   " Asynchronous build and test dispatcher
Plug 'wikitopian/hardmode'  " Disable arrow movement, update to takac/vim-hardtime eventually

if !has('nvim') 
  Plug 'tpope/vim-sensible' " Defaults everyone can agree on
endif 

" Buffer and file-management
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | 
      \ Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' } " File navigation

" Auto-completion
"Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'L3MON4D3/LuaSnip'

Plug 'SirVer/ultisnips'                         " UltiSnips - The ultimate snippet solution for Vim

" Additional functionality
Plug 'preservim/nerdcommenter'                     " Vim plugin for intensely nerdy commenting powers
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'   " Think this is a dependency of something
Plug 'aperezdc/vim-template', { 'on': 'Template' } " Simple templates plugin for Vim
Plug 'embear/vim-localvimrc'                       " Search local vimrc files ('.lvimrc') in the tree (root dir up to current dir) and load them.
Plug 'junegunn/vim-easy-align'                     " A Vim alignment plugin
Plug 'unblevable/quick-scope'                      " Highlighting for f,F,t,T
Plug 'skywind3000/vim-terminal-help'               " Small changes make vim/nvim's internal terminal great again
Plug 'AndrewRadev/linediff.vim'                    " A vim plugin to perform diffs on blocks of code

" Note taking
Plug 'vimwiki/vimwiki', {'branch': 'dev'} " Pesonalized wiki and note taking
"Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes' " Disabled due to conflict with coc

" git related
Plug 'tpope/vim-fugitive'      " The best git plugin
Plug 'airblade/vim-rooter'     " Changes the vim directory to project root
Plug 'rhysd/git-messenger.vim' " Vim and Neovim plugin to reveal the commit messages under the cursor

" Colour schemes
Plug 'junegunn/seoul256.vim'
Plug 'Irubataru/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'trevordmiller/nova-vim'

" Related to the look
Plug 'noib3/cokeline.nvim'                      " 👃 A neovim bufferline for people with addictive personalities
Plug 'itchyny/lightline.vim'                    " A light and configurable statusline/tabline plugin for Vim
Plug 'haya14busa/vim-operator-flashy' | 
      \ Plug 'kana/vim-operator-user'           " Highlight yanked area
Plug 'Yggdroot/indentLine', {'for': ['python']} " A vim plugin to display the indention levels with thin vertical lines
Plug 'haya14busa/incsearch.vim'                 " Improved incremental searching for Vim
Plug 'junegunn/limelight.vim'                   " Hyperfocus-writing in Vim
Plug 'junegunn/goyo.vim'                        " Distraction-free writing in Vim
Plug 'mhinz/vim-startify'                       " The fancy start screen for Vim
Plug 'kyazdani42/nvim-web-devicons'

" For C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp'] }      " Additional Vim syntax highlighting for C++ (including C++11/14/17)
Plug 'preservim/tagbar', {'for': 'cpp'}                         " Vim plugin that displays tags in a window, ordered by scope
Plug 'rhysd/vim-clang-format', { 'for': ['cpp', 'hpp', 'c'] } | " Vim plugin for clang-format
      \ Plug 'kana/vim-operator-user'

" For python
Plug 'Chiel92/vim-autoformat', { 'for': ['python', 'tex', 'html', 'css', 'javascript'] } " Provide easy code formatting in Vim by integrating existing code formatters
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }                                         " No-BS Python code folding for Vim

" For Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }        " Clojure REPL support
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }    " Meikel Brandmeyer's excellent Clojure runtime files
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' } " Extend builtin syntax highlighting to referred and aliased vars in Clojure buffers
Plug 'vim-scripts/paredit.vim', { 'for': 'clojure' }    " Paredit Mode: Structured Editing of Lisp S-expressions
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }       " A Vim plugin for cljfmt, the Clojure formatting tool.

" For LaTeX
Plug 'lervag/vimtex', { 'for': 'tex' }                 " A modern Vim and neovim filetype plugin for LaTeX files.
Plug 'KeitaNakamura/tex-conceal.vim', { 'for': 'tex' } " This plugin extends the Conceal feature of Vim for LaTeX.

" For JavaScript
Plug 'ternjs/tern_for_vim', { 'for': [], 'do': 'npm install' } " Tern plugin for Vim
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }        " Vastly improved Javascript indentation and syntax support in Vim.
Plug 'Olical/vim-syntax-expand', { 'for': 'javascript' }       " Expand characters to code if not in a comment or string
Plug 'elzr/vim-json', { 'for': 'json' }                        " A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.

" For Markdown
Plug 'SidOfc/mkdx', { 'for': 'markdown' } " A vim plugin that adds some nice extra's for working with markdown documents

" Other syntax highlighting
Plug 'lazywei/vim-matlab'       " A matlab plugin for vim, includes syntax highlighting, correct indention and so on.
Plug 'rsmenon/vim-mathematica'  " Mathematica syntax highlighting (and more) for vim
Plug 'vim-scripts/gnuplot.vim'  " Syntax highlighting for Gnuplot
Plug 'Glench/Vim-Jinja2-Syntax' " An up-to-date jinja2 syntax file.

" Other filetype specific plugins
Plug 'vifm/vifm', { 'rtp': 'data/vim' } " Vim-like file manager

" nvim dependent plugins
if has('nvim')
  Plug 'mhinz/vim-signify'        " Show a diff using Vim its sign column
  Plug 'skywind3000/asyncrun.vim' " Run Async Shell Commands in Vim 8.0 / NeoVim and Output to the Quickfix Window
  Plug 'jalvesaq/Nvim-R'          " Vim plugin to work with R
  Plug 'tversteeg/registers.nvim' " NeoVim plugin to preview the contents of the registers
endif

call plug#end()

set completeopt=menu,menuone,noselect

lua << EOD
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = '/home/glesaaen/.local/share/nvim/lsp_servers/sumneko_lua/extension/server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup({
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = on_attach,
  filetypes = {'lua', 'lua.luapad', 'luapad'},
  settings = {
    Lua = {
      runtime = {
        path = vim.split(package.path, ';'), },
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true, -- add as many lib you want
            },
          },
        diagnostics= {
          enable= true,
          globals= { "vim", },
          disable= { "lowercase-global" }
      }
    }
  }
})

require'lspconfig'.clangd.setup{}

  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --   capabilities = capabilities
  -- }
local function prequire(...)
local status, lib = pcall(require, ...)
if (status) then return lib end
    return nil
end

local luasnip = prequire('luasnip')
local cmp = prequire("cmp")

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_next_item()
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    elseif check_back_space() then
        return t "<Tab>"
    else
        cmp.complete()
    end
    return ""
end
_G.s_tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_prev_item()
    elseif luasnip and luasnip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
    return ""
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})

EOD
