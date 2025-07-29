-- highlights taken from pywal16.nvim
function highlights (C)
    return {
        Boolean = { fg = C.color5 },
        Character = { fg = C.color12 },
        CmpDocumentationBorder = { fg = C.foreground, bg = C.none },
        CmpItemAbbr = { fg = C.foreground, bg = C.none },
        CmpItemAbbrDeprecated = { fg = C.color2, bg = C.none },
        CmpItemAbbrMatch = { fg = C.color7, bg = C.none },
        CmpItemAbbrMatchFuzzy = { fg = C.color7, bg = C.none },
        CmpItemKind = { fg = C.color4, bg = C.none },
        CmpItemMenu = { fg = C.color2, bg = C.none },
        ColorColumn = { bg = C.background },
        Comment = { fg = C.color8 },
        Conceal = { fg = C.color4, bg = C.none },
        Conditional = { fg = C.color2 },
        Constant = { fg = C.color9 },
        Cursor = { fg = C.foreground, bg = C.cursor },
        CursorColumn = { bg = C.none },
        CursorIM = { fg = C.foreground, bg = C.cursor },
        CursorLine = { bg = C.none },
        CursorLineNr = { fg = C.color1 },
        Debug = { fg = C.color11 },
        Define = { fg = C.color6 },
        Delimiter = { fg = C.foreground },
        DiffAdd = { fg = C.foreground, bg = C.color2 },
        DiffChange = { fg = C.none, bg = C.color0 },
        DiffDelete = { fg = C.foreground, bg = C.color1 },
        DiffText = { fg = C.foreground, bg = C.color1 },
        Directory = { fg = C.color4 },
        EndOfBuffer = { fg = C.background, bg = C.none },
        Error = { fg = C.color11, bg = C.none },
        ErrorMsg = { fg = C.color11, bg = C.none },
        Exception = { fg = C.color6 },
        Float = { fg = C.color5 },
        FloatBorder = { fg = C.foreground, bg = C.none },
        FoldColumn = { fg = C.color4, bg = C.none },
        Folded = { fg = C.color4, bg = C.none },
        Function = { fg = C.color3 },
        Identifier = { fg = C.color5 },
        Ignore = { fg = C.color7, bg = C.none },
        IncSearch = { fg = C.foreground, bg = C.color3 },
        Include = { fg = C.color6 },
        Keyword = { fg = C.color4 },
        Label = { fg = C.color4 },
        LineNr = { fg = C.color8, bg = C.none },
        Macro = { fg = C.color6 },
        MatchParen = { fg = C.color4, bg = C.none },
        ModeMsg = { fg = C.foreground, bg = C.none },
        MoreMsg = { fg = C.color5 },
        MsgArea = { fg = C.foreground, bg = C.none },
        MsgSeparator = { fg = C.color8, bg = C.none },
        NonText = { fg = C.background },
        Normal = { fg = C.foreground, bg = C.none },
        NormalFloat = { fg = C.foreground, bg = C.background },
        NormalNC = { fg = C.foreground, bg = C.none },
        Number = { fg = C.color5 },
        Operator = { fg = C.color6 },
        Pmenu = { fg = C.foreground, bg = C.none },
        PmenuSbar = { bg = C.none },
        PmenuSel = { fg = C.none, bg = C.color0 },
        PmenuThumb = { bg = C.color2 },
        PreCondit = { fg = C.color6 },
        PreProc = { fg = C.color6 },
        Question = { fg = C.color5 },
        QuickFixLine = { bg = C.color2 },
        Repeat = { fg = C.color6 },
        Search = { fg = C.foreground, bg = C.color2 },
        SignColumn = { fg = C.none, bg = C.none },
        Special = { fg = C.color6 },
        SpecialChar = { fg = C.foreground },
        SpecialComment = { fg = C.color2 },
        SpecialKey = { fg = C.color4 },
        SpellBad = { fg = C.color2 },
        SpellCap = { fg = C.color6 },
        SpellLocal = { fg = C.color4 },
        SpellRare = { fg = C.color6 },
        Statement = { fg = C.color6 },
        StatusLine = { fg = C.none, bg = C.none },
        StatusLineNC = { fg = C.none, bg = C.none },
        StorageClass = { fg = C.color7 },
        String = { fg = C.color6 },
        Structure = { fg = C.color6 },
        Substitute = { fg = C.color1, bg = C.color6 },
        Tag = { fg = C.color4 },
        TermCursor = { fg = C.foreground, bg = C.cursor },
        TermCursorNC = { fg = C.foreground, bg = C.cursor },
        Title = { fg = C.color4 },
        Todo = { fg = C.color11, bg = C.none },
        Type = { fg = C.color5 },
        Typedef = { fg = C.color6 },
        Variable = { fg = C.color9 },
        VertSplit = { fg = C.color4, bg = C.none },
        Visual = { fg = C.foreground, bg = C.color5 },
        VisualNOS = { bg = C.none },
        WarningMsg = { fg = C.color3, bg = C.none },
        Whitespace = { fg = C.color8, bg = C.background },
        WildMenu = { fg = C.color7, bg = C.color4 },
        WinBar = { bg = C.none },
        WinBarNC = { bg = C.none },
        WinSeparator = { fg = C.color8, bg = C.none },
        healthError = { fg = C.color11 },
        healthSuccess = { fg = C.color4 },
        healthWarning = { fg = C.color5 },
        lCursor = { fg = C.foreground, bg = C.cursor },

        -- BetterWhitespace
        ExtraWhitespace = { fg = C.color8, bg = C.background },

        -- BufferLine
        BufferLineFill = { bg = C.none },
        BufferLineIndicatorSelected = { fg = C.color5 },

        -- diagnostics
        DiagnosticError = { fg = C.color9 },
        DiagnosticHint = { fg = C.color14 },
        DiagnosticInfo = { fg = C.color15 },
        DiagnosticWarn = { fg = C.color11 },
        DiagnosticUnderlineError = { undercurl = true, fg = C.color9 },
        DiagnosticUnderlineHint = { undercurl = true, fg = C.color14 },
        DiagnosticUnderlineInfo = { undercurl = true, fg = C.color15 },
        DiagnosticUnderlineWarn = { undercurl = true, fg = C.color11 },

        -- diff
        diffAdded = { fg = C.color2 },
        diffChanged = { fg = C.color3 },
        diffFile = { fg = C.color7 },
        diffIndexLine = { fg = C.color6 },
        diffLine = { fg = C.color1 },
        diffNewFile = { fg = C.color6 },
        diffOldFile = { fg = C.color5 },
        diffRemoved = { fg = C.color1 },

        -- GitGutter
        GitGutterAdd = { fg = C.color4 },     -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = C.color5 },  -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = C.color11 }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = { fg = C.color2 },    -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = C.color3 }, -- diff mode: Changed line |diff.txt|
        GitSignsCurrentLineBlame = { fg = C.color8, bg = C.none },
        GitSignsDelete = { fg = C.color1 }, -- diff mode: Deleted line |diff.txt|

        -- Illuminate
        illuminatedCurWord = { bg = C.foreground },
        illuminatedWord = { bg = C.foreground },

        -- Indent Blank Line
        IblIndent = { fg = C.color8, bg = C.none },
        IblScope = { fg = C.color7, bg = C.none },
        -- IblWhitespace = { fg = C.color8, bg = C.background },

        -- LspSaga
        DefinitionCount = { fg = C.color6 },
        DefinitionIcon = { fg = C.color7 },
        LspFloatWinBorder = { fg = C.foreground },
        LspFloatWinNormal = { bg = C.none },
        LspSagaBorderTitle = { fg = C.color7 },
        LspSagaCodeActionBorder = { fg = C.color7 },
        LspSagaCodeActionContent = { fg = C.color6 },
        LspSagaCodeActionTitle = { fg = C.color7 },
        LspSagaDefPreviewBorder = { fg = C.color4 },
        LspSagaFinderSelection = { fg = C.color1 },
        LspSagaHoverBorder = { fg = C.color7 },
        LspSagaRenameBorder = { fg = C.color4 },
        LspSagaSignatureHelpBorder = { fg = C.color11 },
        ReferencesCount = { fg = C.color6 },
        ReferencesIcon = { fg = C.color7 },
        TargetWord = { fg = C.color7 },

        -- LspTrouble
        LspTroubleCount = { fg = C.color6, bg = C.foreground },
        LspTroubleNormal = { fg = C.foreground, bg = C.none },
        LspTroubleText = { fg = C.foreground },

        -- Neogit
        NeogitBranch = { fg = C.color6 },
        NeogitDiffAddHighlight = { fg = C.color4, bg = C.color4 },
        NeogitDiffContextHighlight = { bg = C.none, fg = C.foreground },
        NeogitDiffDeleteHighlight = { fg = C.color11, bg = C.color11 },
        NeogitHunkHeader = { bg = C.none, fg = C.foreground },
        NeogitHunkHeaderHighlight = { bg = C.foreground, fg = C.color7 },
        NeogitRemote = { fg = C.color6 },

        -- nvim-navic
        NavicIconsArray = { bg = C.none, fg = C.color3 },
        NavicIconsBoolean = { bg = C.none, fg = C.color2 },
        NavicIconsClass = { bg = C.none, fg = C.color2 },
        NavicIconsConstant = { bg = C.none, fg = C.color14 },
        NavicIconsConstructor = { bg = C.none, fg = C.color9 },
        NavicIconsEnum = { bg = C.none, fg = C.color10 },
        NavicIconsEnumMember = { bg = C.none, fg = C.color7 },
        NavicIconsEvent = { bg = C.none, fg = C.color9 },
        NavicIconsField = { bg = C.none, fg = C.color8 },
        NavicIconsFile = { bg = C.none, fg = C.color2 },
        NavicIconsFunction = { bg = C.none, fg = C.color12 },
        NavicIconsInterface = { bg = C.none, fg = C.color11 },
        NavicIconsKey = { bg = C.none, fg = C.color5 },
        NavicIconsMethod = { bg = C.none, fg = C.color3 },
        NavicIconsModule = { bg = C.none, fg = C.color3 },
        NavicIconsNamespace = { bg = C.none, fg = C.color2 },
        NavicIconsNull = { bg = C.none, fg = C.color6 },
        NavicIconsNumber = { bg = C.none, fg = C.color1 },
        NavicIconsObject = { bg = C.none, fg = C.color4 },
        NavicIconsOperator = { bg = C.none, fg = C.color10 },
        NavicIconsPackage = { bg = C.none, fg = C.color3 },
        NavicIconsProperty = { bg = C.none, fg = C.color7 },
        NavicIconsString = { bg = C.none, fg = C.color15 },
        NavicIconsStruct = { bg = C.none, fg = C.color8 },
        NavicIconsTypeParameter = { bg = C.none, fg = C.color11 },
        NavicIconsVariable = { bg = C.none, fg = C.color13 },
        NavicSeparator = { bg = C.none, fg = C.foreground },
        NavicText = { bg = C.none, fg = C.foreground },

        -- nvim-scrollbar
        ScrollbarCursorHandle = { bg = C.color12 },
        ScrollbarHandle = { bg = C.color2 },

        -- NvimTree
        NvimTreeFolderIcon = { fg = C.color2, bg = C.none },
        NvimTreeGitDeleted = { fg = C.color11 },
        NvimTreeGitDirty = { fg = C.color5 },
        NvimTreeGitNew = { fg = C.color4 },
        NvimTreeImageFile = { fg = C.foreground },
        NvimTreeIndentMarker = { fg = C.foreground },
        NvimTreeNormal = { fg = C.foreground, bg = C.none },
        NvimTreeNormalNC = { fg = C.foreground, bg = C.none },
        NvimTreeRootFolder = { fg = C.color6 },
        NvimTreeSpecialFile = { fg = C.color6 },
        NvimTreeStatusLineNC = { bg = C.none, fg = C.none },
        NvimTreeSymlink = { fg = C.color7 },

        -- Telescope
        TelescopeBorder = { fg = C.color5, bg = C.none },
        TelescopeNormal = { fg = C.foreground, bg = C.none },
        TelescopeSelection = { fg = C.none, bg = C.color2 },

        -- treesitter
        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may color5.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute         = { };    -- (unstable) TODO: docs
        -- TSBoolean           = { };    -- For booleans.
        -- TSCharacter         = { };    -- For characters.
        -- TSComment           = { };    -- For color1 blocks.
        TSComment = { fg = C.color8 },
        TSConstructor = { fg = C.color6 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSDanger = { fg = C.none, bg = C.color3 },
        TSNote = { fg = C.none, bg = C.color5 },
        TSWarning = { fg = C.none, bg = C.color5 },
        -- TSConditional       = { };    -- For keywords related to conditionnals.
        -- TSConstant          = { };    -- For constants
        -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
        -- TSError             = { };    -- For syntax/parser errors.
        -- TSException         = { };    -- For exception related keywords.
        TSField = { fg = C.color12 }, -- For fields.
        -- TSFloat             = { };    -- For floats.
        -- TSFunction          = { };    -- For function (calls and definitions).
        -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
        -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword = { fg = C.color6 },         -- For keywords that don't fall in previous categories.
        TSKeywordFunction = { fg = C.color6 }, -- For keywords used to define a fuction.
        TSLabel = { fg = C.color7 },           -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod            = { };    -- For method calls and definitions.
        -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
        -- TSNone              = { };    -- TODO: docs
        -- TSNumber            = { };    -- For all numbers
        TSOperator = { fg = C.color7 },         -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = { fg = C.color5 },        -- For parameters of a function.
        -- TSParameterReference= { };    -- For references to parameters of a function.
        TSProperty = { fg = C.color4 },         -- Same as `TSField`.
        TSPunctDelimiter = { fg = C.color7 },   -- For delimiters ie: `.`
        TSPunctBracket = { fg = C.foreground }, -- For brackets and parens.
        TSPunctSpecial = { fg = C.color7 },     -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat            = { };    -- For keywords related to loops.
        -- TSString            = { };    -- For strings.
        TSStringRegex = { fg = C.color7 },  -- For regexes.
        TSStringEscape = { fg = C.color6 }, -- For escape characters within a string.
        -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
        -- TSType              = { };    -- For types.
        -- TSTypeBuiltin       = { };    -- For builtin types.
        TSVariableBuiltin = { fg = C.color11 }, -- Variable names that are defined by the languages, like `this` or `self`.

        -- TSTag               = { };    -- Tags like html tag names.
        -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
        -- TSText              = { };    -- For strings considered text in a markup language.
        TSTextReference = { fg = C.color8 },
        -- TSEmphasis          = { };    -- For text to be represented with emphasis.
        -- TSUnderline         = { };    -- For text to be represented with an underline.
        -- TSStrike            = { };    -- For strikethrough text.
        -- TSTitle             = { };    -- Text that is part of a title.
        -- TSLiteral           = { };    -- Literal text.
        -- TSURI               = { };    -- Any URI like a link or email.
    }
end

require("neopywal").setup({
    use_palette = 'wallust',
    custom_highlights = function(C)
        return {
            all = highlights(C)
        }
    end,
})

vim.cmd.colorscheme("neopywal")
