local function callback(opts)
  return {
    Normal = { fg = C.text, bg = C.base },
    NormalNC = { fg = C.text, bg = opts.inactive and C.crust or C.base },
    Title = { fg = C.cyan, bg = C.none },
    Cursor = { fg = C.base, bg = C.text },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    ColorColumn = { fg = C.none, bg = C.overlay1 },
    CursorLineNr = { fg = C.text, bg = C.none },
    Conceal = { fg = C.subtext0, bg = C.none },
    CursorColumn = { fg = C.none, bg = C.overlay1 },
    CursorLine = { fg = C.none, bg = C.surface0 },
    Directory = { fg = C.blue, bg = C.none },
    DiffAdd = { fg = C.overlay2, bg = C.green },
    DiffChange = { fg = C.yellow, bg = C.none },
    DiffDelete = { fg = C.overlay3, bg = C.red },
    DiffText = { fg = C.overlay2, bg = C.yellow },
    DiffAdded = { fg = C.green },
    DiffRemoved = { fg = C.red },
    DiffChanged = { fg = C.blue },
    DiffOldFile = { fg = C.orange },
    DiffNewFile = { fg = C.green },
    DiffFile = { fg = C.blue },
    DiffLine = { fg = C.overlay0 },
    DiffIndexLine = { fg = C.cyan },
    ErrorMsg = { fg = C.red, bg = C.none },
    WinSeparator = { fg = C.overlay1, bg = C.none },
    Folded = { fg = C.subtext0, bg = C.none },
    FoldColumn = { fg = C.none, bg = C.none },
    IncSearch = { fg = C.yellow, bg = C.subtext0 },
    CurSearch = { link = "IncSearch" },
    LineNr = { fg = C.subtext0, bg = C.none },
    NonText = { fg = C.subtext0, bg = C.none },
    Pmenu = { fg = C.text, bg = C.mantle },
    PmenuSel = { fg = C.none, bg = C.overlay1 },
    PmenuSbar = { fg = C.none, bg = C.overlay2 },
    PmenuThumb = { fg = C.none, bg = C.text },
    Question = { fg = C.purple, bg = C.none },
    QuickFixLine = { fg = C.overlay2, bg = C.yellow },
    Search = { fg = C.overlay2, bg = C.yellow },
    SignColumn = { fg = C.none, bg = C.none },
    SpecialKey = { fg = C.subtext0, bg = C.none },
    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellLocal = { undercurl = true },
    SpellRare = { undercurl = true },
    StatusLine = { fg = C.text, bg = C.crust },
    StatusLineNC = { fg = C.subtext0, bg = C.none },
    StatusLineTerm = { fg = C.text, bg = C.overlay1 },
    StatusLineTermNC = { fg = C.crust, bg = C.none },
    StatusInactive = { fg = C.crust, bg = C.surface0 },
    StatusNormal = { fg = C.crust, bg = C.blue },
    StatusInsert = { fg = C.crust, bg = C.green },
    StatusVisual = { fg = C.crust, bg = C.purple },
    StatusReplace = { fg = C.crust, bg = C.dark_red },
    StatusCommand = { fg = C.crust, bg = C.dark_yellow },
    StatusTerminal = { link = "StatusInsert" },
    WinBar = { fg = C.subtext1, bg = C.base },
    WinBarNC = { fg = C.subtext0, bg = opts.inactive and C.crust or C.base },
    TabLine = { fg = C.subtext0, bg = C.none },
    TabLineSel = { fg = C.text, bg = C.none },
    TabLineFill = { fg = C.none, bg = C.overlay2 },
    Terminal = { fg = C.text, bg = C.overlay2 },
    Visual = { fg = C.none, bg = C.surface1 },
    VisualNOS = { fg = C.surface1, bg = C.none },
    VirtSplit = { bg = C.base },
    WarningMsg = { fg = C.yellow, bg = C.none },
    WildMenu = { fg = C.overlay2, bg = C.blue },
    EndOfBuffer = { fg = C.base, bg = C.none },
    FloatBorder = { fg = C.surface1, bg = C.base },
    MatchParen = { fg = C.none, bg = C.surface1 },
  }
end

return callback
