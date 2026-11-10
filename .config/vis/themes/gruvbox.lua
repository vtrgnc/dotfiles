-- Gruvbox dark para o vis
local lexers = vis.lexers

-- Paleta (índices xterm-256 mais próximos do gruvbox)
-- Para truecolor, troque por hex, ex.: red = '#fb4934'
local c = {
  bg0    = '235', -- #282828
  bg1    = '237', -- #3c3836
  bg2    = '239', -- #504945
  bg3    = '241', -- #665c54
  fg     = '223', -- #ebdbb2
  gray   = '245', -- #928374
  red    = '167', -- #fb4934
  green  = '142', -- #b8bb26
  yellow = '214', -- #fabd2f
  blue   = '109', -- #83a598
  purple = '175', -- #d3869b
  aqua   = '108', -- #8ec07c
  orange = '208', -- #fe8019
}

local function fg(color, extra)
  return 'fore:' .. color .. (extra and (',' .. extra) or '')
end

-- Se preferir usar o fundo do seu terminal, deixe STYLE_DEFAULT = ''
lexers.STYLE_DEFAULT = 'fore:' .. c.fg .. ',back:' .. c.bg0
lexers.STYLE_NOTHING = ''
lexers.STYLE_ATTRIBUTE = fg(c.yellow)
lexers.STYLE_CLASS = fg(c.yellow)
lexers.STYLE_COMMENT = fg(c.gray, 'italics')
lexers.STYLE_CONSTANT = fg(c.purple)
lexers.STYLE_DEFINITION = fg(c.aqua)
lexers.STYLE_ERROR = fg(c.red, 'bold')
lexers.STYLE_FUNCTION = fg(c.green, 'bold')
lexers.STYLE_HEADING = fg(c.green, 'bold')
lexers.STYLE_KEYWORD = fg(c.red)
lexers.STYLE_LABEL = fg(c.aqua)
lexers.STYLE_NUMBER = fg(c.purple)
lexers.STYLE_OPERATOR = fg(c.orange)
lexers.STYLE_REGEX = fg(c.aqua)
lexers.STYLE_STRING = fg(c.green)
lexers.STYLE_PREPROCESSOR = fg(c.aqua)
lexers.STYLE_TAG = fg(c.aqua)
lexers.STYLE_TYPE = fg(c.yellow)
lexers.STYLE_VARIABLE = fg(c.blue)
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'back:' .. c.bg1
lexers.STYLE_IDENTIFIER = fg(c.fg)

lexers.STYLE_LINENUMBER = fg(c.bg3)
lexers.STYLE_LINENUMBER_CURSOR = fg(c.yellow)
lexers.STYLE_CURSOR = 'back:' .. c.fg .. ',fore:' .. c.bg0 .. ',keep_attribute'
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR
lexers.STYLE_CURSOR_LINE = 'back:' .. c.bg1 .. ',keep_attribute'
lexers.STYLE_COLOR_COLUMN = 'back:' .. c.bg1
lexers.STYLE_SELECTION = 'back:' .. c.bg3 .. ',keep_attribute'
lexers.STYLE_STATUS = 'back:' .. c.bg2 .. ',fore:' .. c.fg
lexers.STYLE_STATUS_FOCUSED = 'back:' .. c.yellow .. ',fore:' .. c.bg0 .. ',bold'
lexers.STYLE_SEPARATOR = 'fore:' .. c.bg2
lexers.STYLE_INFO = fg(c.yellow, 'bold')
lexers.STYLE_EOF = fg(c.bg3)

-- lexer specific styles

-- Diff
lexers.STYLE_ADDITION = fg(c.green)
lexers.STYLE_DELETION = fg(c.red)
lexers.STYLE_CHANGE = fg(c.yellow)

-- CSS
lexers.STYLE_PROPERTY = fg(c.blue)
lexers.STYLE_PSEUDOCLASS = fg(c.purple)
lexers.STYLE_PSEUDOELEMENT = fg(c.purple)

-- HTML
lexers.STYLE_TAG_UNKNOWN = lexers.STYLE_TAG .. ',italics'
lexers.STYLE_TAG_SINGLE = lexers.STYLE_TAG
lexers.STYLE_TAG_DOCTYPE = fg(c.gray, 'bold')
lexers.STYLE_ATTRIBUTE_UNKNOWN = lexers.STYLE_ATTRIBUTE .. ',italics'

-- Latex, TeX, and Texinfo
lexers.STYLE_COMMAND = lexers.STYLE_KEYWORD
lexers.STYLE_COMMAND_SECTION = fg(c.green, 'bold')
lexers.STYLE_ENVIRONMENT = lexers.STYLE_TYPE
lexers.STYLE_ENVIRONMENT_MATH = lexers.STYLE_NUMBER

-- Makefile
lexers.STYLE_TARGET = fg(c.green)

-- Markdown
lexers.STYLE_HR = fg(c.gray)
for i = 1,6 do lexers['STYLE_HEADING_H'..i] = lexers.STYLE_HEADING end
lexers.STYLE_BOLD = 'bold'
lexers.STYLE_ITALIC = 'italics'
lexers.STYLE_LIST = fg(c.orange)
lexers.STYLE_LINK = fg(c.blue, 'underlined')
lexers.STYLE_REFERENCE = fg(c.aqua)
lexers.STYLE_CODE = fg(c.aqua) .. ',back:' .. c.bg1

-- Output
lexers.STYLE_FILENAME = fg(c.green)
lexers.STYLE_LINE = fg(c.yellow)
lexers.STYLE_COLUMN = fg(c.yellow)
lexers.STYLE_MESSAGE = ''

-- Python
lexers.STYLE_KEYWORD_SOFT = fg(c.orange)

-- Taskpaper
lexers.STYLE_NOTE = fg(c.gray)
lexers.STYLE_TAG_EXTENDED = fg(c.aqua)
lexers.STYLE_TAG_DAY = fg(c.yellow)
lexers.STYLE_TAG_OVERDUE = fg(c.red)
lexers.STYLE_TAG_PLAIN = ''

-- XML
lexers.STYLE_CDATA = fg(c.gray)

-- YAML
lexers.STYLE_ERROR_INDENT = 'back:' .. c.red

-- Estilos temporários até os lexers legados serem migrados

-- Antlr
lexers.STYLE_ACTION = fg(c.aqua)

-- Clojure
lexers.STYLE_CLOJURE_KEYWORD = lexers.STYLE_TYPE
lexers.STYLE_CLOJURE_SYMBOL = lexers.STYLE_TYPE .. ',bold'

-- Gleam
lexers.STYLE_MODULE = lexers.STYLE_CONSTANT
lexers.STYLE_DISCARD = lexers.STYLE_COMMENT

-- Icon
lexers.STYLE_SPECIAL_KEYWORD = lexers.STYLE_TYPE

-- jq
lexers.STYLE_FORMAT = lexers.STYLE_CONSTANT
lexers.STYLE_SYSVAR = lexers.STYLE_CONSTANT .. ',bold'

-- Julia
lexers.STYLE_CHARACTER = lexers.STYLE_CONSTANT

-- Mediawiki
lexers.STYLE_BEHAVIOR_SWITCH = lexers.STYLE_KEYWORD

-- Moonscript
lexers.STYLE_TBL_KEY = lexers.STYLE_REGEX
lexers.STYLE_SELF_REF = lexers.STYLE_LABEL
lexers.STYLE_PROPER_IDENT = lexers.STYLE_CLASS
lexers.STYLE_FNDEF = lexers.STYLE_PREPROCESSOR

-- reST
lexers.STYLE_LITERAL_BLOCK = lexers.STYLE_EMBEDDED
lexers.STYLE_FOOTNOTE_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_CITATION_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_LINK_BLOCK = lexers.STYLE_LABEL
lexers.STYLE_CODE_BLOCK = lexers.STYLE_CODE
lexers.STYLE_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_SPHINX_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_UNKNOWN_DIRECTIVE = lexers.STYLE_KEYWORD
lexers.STYLE_SUBSTITUTION = lexers.STYLE_VARIABLE
lexers.STYLE_INLINE_LITERAL = lexers.STYLE_EMBEDDED
lexers.STYLE_ROLE = lexers.STYLE_CLASS
lexers.STYLE_INTERPRETED = lexers.STYLE_STRING

-- txt2tags
lexers.STYLE_LINE = 'bold'
for i = 1,5 do lexers['STYLE_H'..i] = lexers.STYLE_HEADING end
lexers.STYLE_IMAGE = fg(c.green)
lexers.STYLE_STRIKE = 'italics'
lexers.STYLE_TAGGED = lexers.STYLE_EMBEDDED
lexers.STYLE_TAGGED_AREA = lexers.STYLE_EMBEDDED
lexers.STYLE_TABLE_SEP = fg(c.green)
lexers.STYLE_HEADER_CELL_CONTENT = fg(c.green)
