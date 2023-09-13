---@meta

--- List of options for `vim.api.nvim_set_hl`
---@class APISetHighlightOpts
---@field fg? string Color name or Hex code of foreground
---@field bg? string Color name or Hex code of background
---@field sp? string Color of underlines. Read more at `:h guisp`.
--- integer between 0 and 100, level of opacity
--- Only applied for floating windows, popupmenu
--- Check `:h highlight-blend` for more information
---@field blend? integer 
---@field bold? boolean bolded text or not
---@field standout? boolean decorations
---@field underline? boolean decorations
---@field undercurl? boolean decorations
---@field underdouble? boolean decorations
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean italicized text
---@field reverse? boolean
---@field nocombine? boolean
--- name of another highlight group to link to, see `:h hi-link` for more information.
--- When this is not null, all attributes will be overriden if the linked group has such attribute defined
--- To unlink a hlgroup, do `link = "NONE"`
---@field link? string|'"NONE"'
---@field default? boolean Don't override existing definition if true
---@field ctermfg? number Sets foreground of cterm color
---@field ctermbg? number Sets background of cterm color
---@field cterm? string comma-separated list of cterm opts. For more information, check `:h highlight-args`

---@class Base46HLGroups : APISetHighlightOpts
--- Color name or Hex code of foreground
--- if fg is "NONE", remove the foreground color
---@field fg? string|Base30Colors|'"NONE"'
--- Color name or Hex code of background
--- if bg is "NONE", remove the background color
---@field bg? string|table|Base30Colors|'"NONE"' 
--- Color name or hex code that will be used for underline colors
--- - If sp is `NONE`, use transparent color for special
--- - If sp is `bg` or `background`, use normal background color
--- - If sp is `fg` or `foreground`, use normal foreground color
--- See :h guisp for more information
---@field sp? string|Base30Colors|'"NONE"'|'"bg"'|'"background"'|'"fg"'|'"foreground"'

---@alias HLTable table<string, Base46HLGroups>

---@alias Base30Colors
---| '"white"'
---| '"darker_black"'
---| '"black"'
---| '"black2"'
---| '"one_bg"'
---| '"one_bg2"'
---| '"one_bg3"'
---| '"grey"'
---| '"grey_fg"'
---| '"grey_fg2"'
---| '"light_grey"'
---| '"red"'
---| '"baby_pink"'
---| '"pink"'
---| '"line"'
---| '"green"'
---| '"vibrant_green"'
---| '"blue"'
---| '"nord_blue"'
---| '"yellow"'
---| '"sun"'
---| '"purple"'
---| '"dark_purple"'
---| '"teal"'
---| '"orange"'
---| '"cyan"'
---| '"statusline_bg"'
---| '"lightbg"'
---| '"pmenu_bg"'
---| '"folder_bg"'

---@alias Base16Colors
---| '"base00"'
---| '"base01"'
---| '"base02"'
---| '"base03"'
---| '"base04"'
---| '"base05"'
---| '"base06"'
---| '"base07"'
---| '"base08"'
---| '"base09"'
---| '"base0A"'
---| '"base0B"'
---| '"base0C"'
---| '"base0D"'
---| '"base0E"'
---| '"base0F"'

---@alias Base46Colors
---| Base30Colors
---| Base16Colors

---@class ThemeTable
---@field base_16 Base16Table base00-base0F colors
---@field base_30 Base30Table extra colors to use

---@class Base46Table : ThemeTable
---@field add_hl HLTable
---@field polish_hl HLTable highlight groups to be changed from the default color
---@field type '"dark"'|'"light"' Denoting value to set for `vim.opt.bg`

---@class Base16Table
---@field base00 string Neovim Default Background
---@field base01 string Lighter Background (Used for status bars, line number and folding marks)
---@field base02 string Selection Background (Visual Mode)
---@field base03 string Comments, Invisibles, Line Highlighting, Special Keys, Sings, Fold bg
---@field base04 string Dark Foreground, Dnf Underline (Used for status bars)
---@field base05 string Default Foreground (for text), Var, Refrences Caret, Delimiters, Operators
---@field base06 string Light Foreground (Not often used)
---@field base07 string Light Foreground, Cmp Icons (Not often used)
---@field base08 string Variables, Identifiers, Filed, Name Space, Error, Spell XML Tags, Markup Link Text, Markup Lists, Diff Deleted
---@field base09 string Integers, Boolean, Constants, XML Attributes, Markup Link Url, Inc Search
---@field base0A string Classes, Attribute, Type, Repeat, Tag, Todo, Markup Bold, Search Text Background
---@field base0B string Strings, Symbols, Inherited Class, Markup Code, Diff Inserted
---@field base0C string Constructor,Special, Fold Column, Support, Regular Expressions, Escape Characters, Markup Quotes
---@field base0D string Functions, Methods, Attribute IDs, Headings
---@field base0E string Keywords, Storage, Selector, Markup Italic, Diff Changed
---@field base0F string Delimiters, Special Char, Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

---@class Base30Table
---@field white string
---@field darker_black string LSP/CMP Pop-ups, Tree BG
---@field black string CMP BG, Icons/Headers FG
---@field black2 string Tabline BG, Cursor Lines, Selections
---@field one_bg string Pop-up Menu BG, Statusline Icon FG
---@field one_bg2 string Tabline Inactive BG, Indent Line Context Start
---@field one_bg3 string Tabline Toggle/New Btn, Borders
---@field grey string Line Nr, Scrollbar, Indent Line Hover
---@field grey_fg string Comment
---@field grey_fg2 string Unused
---@field light_grey string Diff Change, Tabline Inactive FG
---@field red string Diff Delete, Diag Error
---@field baby_pink string Some Dev Icons
---@field pink string Indicators
---@field line string Win Sep, Indent Line
---@field green string Diff Add, Diag Info, Indicators
---@field vibrant_green string Some Dev Icons
---@field blue string UI Elements, Dev/CMP Icons
---@field nord_blue string Indicators
---@field yellow string Diag Warn
---@field sun string Dev Icons
---@field purple string Diag Hint, Dev/CMP Icons
---@field dark_purple string Some Dev Icons
---@field teal string Dev/CMP Icons
---@field orange string Diff Mod
---@field cyan string Dev/CMP Icons
---@field statusline_bg string Statusline
---@field lightbg string Statusline Components
---@field pmenu_bg string Pop-up Menu Selection
---@field folder_bg string Nvimtree Items
