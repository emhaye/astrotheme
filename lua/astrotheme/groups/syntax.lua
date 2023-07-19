-- Subgroups inherit highlights from their primary groups by default.
-- While unnecessary, we define all subgroups and their highlights
-- for completeness.
--
-- Syntax group hierachry (e.g.):
--   - Constant (Primary group)
--       - String (Subgroup)
--       - Character (Subgroup)
--
-- Ref: :help group-name
local function callback(opts)
  return {
    -- Comment
    Comment = { fg = C.syntax.comment, bg = C.none, bold = opts.bold_comments, italic = opts.italic_comments }, -- any comment
    -- Constant
    Constant = { fg = opts.simple_syntax_colors and C.syntax.cyan or C.syntax.yellow, bg = C.none, bold = opts.bold_constants, italic = opts.italic_constants }, -- any constant
    String = { fg = C.syntax.green, bg = C.none, bold = opts.bold_strings, italic = opts.italic_strings }, -- a string constant: "this is a string"
    Character = { fg = C.syntax.green, bg = C.nonel, bold = opts.bold_characters, italic = opts.italic_characters }, -- a character constant: 'c', '\n'
    Number = { fg = C.syntax.orange, bg = C.none, bold = opts.bold_numbers, italic = opts.italic_numbers }, -- a number constant: 234, 0xff
    Boolean = { fg = C.syntax.orange, bg = C.none, bold = opts.bold_booleans, italic = opts.italic_booleans }, -- a boolean constant: TRUE, false
    Float = { fg = C.syntax.yellow, bg = C.none, bold = opts.bold_floats, italic = opts.italic_floats }, -- a floating point constant: 2.3e10
    -- Identifier
    Identifier = { fg = C.syntax.text, bg = C.none, bold = opts.bold_identifiers, italic = opts.italic_identifiers }, -- any variable name
    Function = { fg = C.syntax.blue, bg = C.none, bold = opts.bold_functions, italic = opts.italic_functions }, -- function name (also: methods for classes)
    -- Statement
    Statement = { fg = C.syntax.purple, bg = C.none, bold = opts.bold_statements, italic = opts.italic_statements }, -- any statement
    Conditional = { fg = C.syntax.purple, bg = C.none, bold = opts.bold_conditionals, italic = opts.italic_conditionals }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = C.syntax.purple, bg = C.none, bold = opts.bold_repeats, italic = opts.italic_repeats }, -- for, do, while, etc.
    Label = { fg = C.syntax.blue, bg = C.none }, -- case, default, etc.
    Operator = { fg = opts.simple_syntax_colors and C.syntax.purple or C.syntax.text, bg = C.none, bold = opts.bold_operators, italic = opts.italic_operators }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = C.syntax.purple, bg = C.none, bold = opts.bold_keywords, italic = opts.italic_keywords }, -- any other keyword
    Exception = { fg = C.syntax.purple, bg = C.none }, -- try, catch, throw
    -- Preproc
    PreProc = { fg = C.syntax.yellow, bg = C.none }, -- generic Preprocessor
    Include = { fg = C.syntax.purple, bg = C.none }, -- preprocessor #include
    Define = { fg = C.syntax.purple, bg = C.none }, -- preprocessor #define
    Macro = { fg = C.syntax.orange, bg = C.none }, -- same as Define
    PreCondit = { fg = C.syntax.blue, bg = C.none }, -- preprocessor #if, #else, #endif, etc.
    -- Type
    Type = { fg = C.syntax.blue, bg = C.none, bold = opts.bold_types, italic = opts.italic_types }, -- int, long, char, etc.
    StorageClass = { fg = C.syntax.blue, bg = C.none }, -- static, register, volatile, etc.
    Structure = { fg = C.syntax.yellow, bg = C.none }, -- struct, union, enum, etc.
    Typedef = { fg = C.syntax.yellow, bg = C.none }, -- A typedef
    -- Special
    Special = { fg = C.syntax.blue, bg = C.none }, -- any special symbol
    SpecialChar = { fg = C.syntax.blue, bg = C.none }, -- special character in a constant
    Tag = { fg = C.syntax.blue, bg = C.none }, -- you can use CTRL-] on this
    Delimiter = { fg = C.syntax.blue, bg = C.none }, -- character that needs attention
    SpecialComment = { fg = C.ui.none_text, bg = C.none }, -- special things inside a comment
    Debug = { fg = C.ui.blue, bg = C.none }, -- debugging statements
    -- Underlined
    Underlined = { fg = C.syntax.cyan, bg = C.none, underline = true }, -- text that stands out, HTML links
    -- Ignore
    Ignore = { fg = C.none, bg = C.none }, -- left blank, hidden  |hl-Ignore|
    -- Error
    Error = { fg = C.ui.red, bg = C.none }, -- any erroneous construct
    -- Todo
    Todo = { fg = C.ui.yellow, bg = C.none }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  }
end
return callback
