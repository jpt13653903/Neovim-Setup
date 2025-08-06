local cat = require('catppuccin')

cat.setup({
    transparent_background = true,
    show_end_of_buffer = true,
    term_colors        = true,
    -- dim_inactive = {
    --     enabled    = true,
    --     shade      = 'dark',
    --     percentage = 0.2,
    -- },
    no_italic = true,

    -- Colours before PR 804 (https://github.com/catppuccin/nvim/pull/804#pullrequestreview-3080755868)
    custom_highlights = function(colours)
        local options = cat.options
        return {
            ["@variable.member"] = { fg = colours.lavender }, -- For fields.
            ["@module"] = { fg = colours.lavender, style = options.styles.miscs or { "italic" } }, -- For identifiers referring to modules and namespaces.
            ["@string.special.url"] = { fg = colours.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
            ["@type.builtin"] = { fg = colours.yellow, style = options.styles.properties or { "italic" } }, -- For builtin types.
            ["@property"] = { fg = colours.lavender, style = options.styles.properties or {} }, -- Same as TSField.
            ["@constructor"] = { fg = colours.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
            ["@keyword.operator"] = { link = "Operator" }, -- For new keyword operator
            ["@keyword.export"] = { fg = colours.sky, style = options.styles.keywords },
            ["@markup.strong"] = { fg = colours.maroon, style = { "bold" } }, -- bold
            ["@markup.italic"] = { fg = colours.maroon, style = { "italic" } }, -- italic
            ["@markup.heading"] = { fg = colours.blue, style = { "bold" } }, -- titles like: # Example
            ["@markup.quote"] = { fg = colours.maroon, style = { "bold" } }, -- block quotes
            ["@markup.link"] = { link = "Tag" }, -- text references, footnotes, citations, etc.
            ["@markup.link.label"] = { link = "Label" }, -- link, reference descriptions
            ["@markup.link.url"] = { fg = colours.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
            ["@markup.raw"] = { fg = colours.teal }, -- used for inline code in markdown and for doc in python (""")
            ["@markup.list"] = { link = "Special" },
            ["@tag"] = { fg = colours.mauve }, -- Tags like html tag names.
            ["@tag.attribute"] = { fg = colours.teal, style = options.styles.miscs or { "italic" } }, -- Tags like html tag names.
            ["@tag.delimiter"] = { fg = colours.sky }, -- Tag delimiter like < > /
            ["@property.css"] = { fg = colours.lavender },
            ["@property.id.css"] = { fg = colours.blue },
            ["@type.tag.css"] = { fg = colours.mauve },
            ["@string.plain.css"] = { fg = colours.peach },
            ["@constructor.lua"] = { fg = colours.flamingo }, -- For constructor calls and definitions: = { } in Lua.
            -- typescript
            ["@property.typescript"] = { fg = colours.lavender, style = options.styles.properties or {} },
            ["@constructor.typescript"] = { fg = colours.lavender },
            -- TSX (Typescript React)
            ["@constructor.tsx"] = { fg = colours.lavender },
            ["@tag.attribute.tsx"] = { fg = colours.teal, style = options.styles.miscs or { "italic" } },
            ["@type.builtin.c"] = { fg = colours.yellow, style = {} },
            ["@type.builtin.cpp"] = { fg = colours.yellow, style = {} },
        }
    end,
})

vim.opt.background = 'dark'
vim.cmd.colors('catppuccin')

