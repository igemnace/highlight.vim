" Author: Ian Emnace <igemnace@gmail.com>
" Palette:
" black      236  #303030
" red        210  #ff8787
" green      114  #87d787
" yellow     221  #ffd75f
" blue       68   #5f87d7
" magenta    176  #d787d7
" cyan       80   #5fd7d7
" white      252  #d0d0d0
" lightgray  243  #767676
" darkgray   237  #3a3a3a

""" COLORSCHEME BOILERPLATE {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'highlight'
""" END COLORSCHEME BOILERPLATE }}}

""" ENVIRONMENT-DEPENDENT HIGHLIGHTS {{{
" Allows for graceful degradation:
" 1. Exact hex colors for GUI and termguicolors
" 2. Xterm palette equivalent for 256-color terminals
" 3. ANSI color equivalent for 16-color terminals
" See: https://github.com/romainl/vim-rnb and the logic behind it

if $TERM =~ '256' || &t_Co >= 256 || has('gui_running')
  """ FULL-FEATURED {{{
  " Xterm palette for cterm, hex for GUI

  " Syntax groups: convenient highlight groups for syntax highlighting
  highlight Normal         cterm=NONE  ctermfg=252  ctermbg=236   gui=NONE  guifg=#d0d0d0  guibg=#303030  guisp=NONE
  highlight TextRed        cterm=NONE  ctermfg=210  ctermbg=NONE  gui=NONE  guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight TextGreen      cterm=NONE  ctermfg=114  ctermbg=NONE  gui=NONE  guifg=#87d787  guibg=NONE     guisp=NONE
  highlight TextYellow     cterm=NONE  ctermfg=221  ctermbg=NONE  gui=NONE  guifg=#ffd75f  guibg=NONE     guisp=NONE
  highlight TextBlue       cterm=NONE  ctermfg=68   ctermbg=NONE  gui=NONE  guifg=#5f87d7  guibg=NONE     guisp=NONE
  highlight TextMagenta    cterm=NONE  ctermfg=176  ctermbg=NONE  gui=NONE  guifg=#d787d7  guibg=NONE     guisp=NONE
  highlight TextCyan       cterm=NONE  ctermfg=80   ctermbg=NONE  gui=NONE  guifg=#5fd7d7  guibg=NONE     guisp=NONE
  highlight TextWhite      cterm=NONE  ctermfg=252  ctermbg=NONE  gui=NONE  guifg=#d0d0d0  guibg=NONE     guisp=NONE
  highlight TextLightGray  cterm=NONE  ctermfg=243  ctermbg=NONE  gui=NONE  guifg=#767676  guibg=NONE     guisp=NONE
  highlight TextDarkGray   cterm=NONE  ctermfg=237  ctermbg=NONE  gui=NONE  guifg=#3a3a3a  guibg=NONE     guisp=NONE

  " User highlight groups: useful for statusline, where the background is dark gray
  highlight User1  cterm=NONE  ctermfg=1  ctermbg=237  gui=NONE  guifg=#ff8787  guibg=#3a3a3a  guisp=NONE
  highlight User2  cterm=NONE  ctermfg=2  ctermbg=237  gui=NONE  guifg=#87d787  guibg=#3a3a3a  guisp=NONE
  highlight User3  cterm=NONE  ctermfg=3  ctermbg=237  gui=NONE  guifg=#ffd75f  guibg=#3a3a3a  guisp=NONE
  highlight User4  cterm=NONE  ctermfg=4  ctermbg=237  gui=NONE  guifg=#5f87d7  guibg=#3a3a3a  guisp=NONE
  highlight User5  cterm=NONE  ctermfg=5  ctermbg=237  gui=NONE  guifg=#d787d7  guibg=#3a3a3a  guisp=NONE
  highlight User6  cterm=NONE  ctermfg=6  ctermbg=237  gui=NONE  guifg=#5fd7d7  guibg=#3a3a3a  guisp=NONE
  highlight User7  cterm=NONE  ctermfg=7  ctermbg=237  gui=NONE  guifg=#d0d0d0  guibg=#3a3a3a  guisp=NONE

  " Editor chrome
  highlight Bold              cterm=bold       ctermfg=NONE  ctermbg=NONE  gui=bold       guifg=NONE     guibg=NONE     guisp=NONE
  highlight ColorColumn       cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight Conceal           cterm=NONE       ctermfg=68    ctermbg=236   gui=NONE       guifg=#5f87d7  guibg=#303030  guisp=NONE
  highlight Cursor            cterm=NONE       ctermfg=236   ctermbg=252   gui=NONE       guifg=#303030  guibg=#d0d0d0  guisp=NONE
  highlight CursorColumn      cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight CursorLine        cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight CursorLineNr      cterm=NONE       ctermfg=243   ctermbg=236   gui=NONE       guifg=#767676  guibg=#303030  guisp=NONE
  highlight Debug             cterm=NONE       ctermfg=210   ctermbg=NONE  gui=NONE       guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight DiffAdd           cterm=bold       ctermfg=114   ctermbg=237   gui=bold       guifg=#87d787  guibg=#3a3a3a  guisp=NONE
  highlight DiffChange        cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight DiffDelete        cterm=NONE       ctermfg=210   ctermbg=237   gui=NONE       guifg=#ff8787  guibg=#3a3a3a  guisp=NONE
  highlight DiffText          cterm=bold       ctermfg=221   ctermbg=237   gui=bold       guifg=#ffd75f  guibg=#3a3a3a  guisp=NONE
  highlight Directory         cterm=NONE       ctermfg=68    ctermbg=NONE  gui=NONE       guifg=#5f87d7  guibg=NONE     guisp=NONE
  highlight EndOfBuffer       cterm=NONE       ctermfg=243   ctermbg=NONE  gui=NONE       guifg=#767676  guibg=NONE     guisp=NONE
  highlight Error             cterm=NONE       ctermfg=236   ctermbg=210   gui=NONE       guifg=#303030  guibg=#ff8787  guisp=NONE
  highlight ErrorMsg          cterm=NONE       ctermfg=210   ctermbg=236   gui=NONE       guifg=#ff8787  guibg=#303030  guisp=NONE
  highlight FoldColumn        cterm=NONE       ctermfg=243   ctermbg=236   gui=NONE       guifg=#767676  guibg=#303030  guisp=NONE
  highlight Folded            cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight Ignore            cterm=NONE       ctermfg=236   ctermbg=NONE  gui=NONE       guifg=#303030  guibg=NONE     guisp=NONE
  highlight IncSearch         cterm=NONE       ctermfg=237   ctermbg=243   gui=NONE       guifg=#3a3a3a  guibg=#767676  guisp=NONE
  highlight LineNr            cterm=NONE       ctermfg=243   ctermbg=236   gui=NONE       guifg=#767676  guibg=#303030  guisp=NONE
  highlight Macro             cterm=NONE       ctermfg=210   ctermbg=NONE  gui=NONE       guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight MatchParen        cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight ModeMsg           cterm=bold       ctermfg=114   ctermbg=NONE  gui=bold       guifg=#87d787  guibg=NONE     guisp=NONE
  highlight MoreMsg           cterm=NONE       ctermfg=114   ctermbg=NONE  gui=NONE       guifg=#87d787  guibg=NONE     guisp=NONE
  highlight NonText           cterm=NONE       ctermfg=243   ctermbg=NONE  gui=NONE       guifg=#767676  guibg=NONE     guisp=NONE
  highlight Pmenu             cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight PmenuSbar         cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight PmenuSel          cterm=NONE       ctermfg=221   ctermbg=237   gui=NONE       guifg=#ffd75f  guibg=#3a3a3a  guisp=NONE
  highlight PmenuThumb        cterm=NONE       ctermfg=NONE  ctermbg=243   gui=NONE       guifg=NONE     guibg=#767676  guisp=NONE
  highlight Question          cterm=NONE       ctermfg=68    ctermbg=NONE  gui=NONE       guifg=#5f87d7  guibg=NONE     guisp=NONE
  highlight QuickFixLine      cterm=underline  ctermfg=NONE  ctermbg=NONE  gui=underline  guifg=NONE     guibg=NONE     guisp=NONE
  highlight Search            cterm=NONE       ctermfg=237   ctermbg=243   gui=NONE       guifg=#3a3a3a  guibg=#767676  guisp=NONE
  highlight SignColumn        cterm=NONE       ctermfg=237   ctermbg=236   gui=NONE       guifg=#3a3a3a  guibg=#303030  guisp=NONE
  highlight SpecialKey        cterm=NONE       ctermfg=243   ctermbg=NONE  gui=NONE       guifg=#767676  guibg=NONE     guisp=NONE
  highlight SpellBad          cterm=underline  ctermfg=252   ctermbg=236   gui=underline  guifg=#d0d0d0  guibg=#303030  guisp=NONE
  highlight SpellCap          cterm=NONE       ctermfg=NONE  ctermbg=236   gui=NONE       guifg=NONE     guibg=#303030  guisp=NONE
  highlight SpellLocal        cterm=NONE       ctermfg=NONE  ctermbg=236   gui=NONE       guifg=NONE     guibg=#303030  guisp=NONE
  highlight SpellRare         cterm=NONE       ctermfg=NONE  ctermbg=236   gui=NONE       guifg=NONE     guibg=#303030  guisp=NONE
  highlight StatusLine        cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight StatusLineNC      cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3b3b3b  guisp=NONE
  highlight StatusLineTerm    cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight StatusLineTermNC  cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight TabLine           cterm=NONE       ctermfg=243   ctermbg=237   gui=NONE       guifg=#767676  guibg=#3a3a3a  guisp=NONE
  highlight TabLineFill       cterm=NONE       ctermfg=237   ctermbg=237   gui=NONE       guifg=#3a3a3a  guibg=#3a3a3a  guisp=NONE
  highlight TabLineSel        cterm=NONE       ctermfg=221   ctermbg=237   gui=NONE       guifg=#ffd75f  guibg=#3a3a3a  guisp=NONE
  highlight Title             cterm=NONE       ctermfg=68    ctermbg=NONE  gui=NONE       guifg=#5f87d7  guibg=NONE     guisp=NONE
  highlight TooLong           cterm=NONE       ctermfg=210   ctermbg=NONE  gui=NONE       guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight Underlined        cterm=underline  ctermfg=210   ctermbg=NONE  gui=underline  guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight VertSplit         cterm=NONE       ctermfg=236   ctermbg=236   gui=NONE       guifg=#303030  guibg=#303030  guisp=NONE
  highlight Visual            cterm=NONE       ctermfg=NONE  ctermbg=237   gui=NONE       guifg=NONE     guibg=#3a3a3a  guisp=NONE
  highlight VisualNOS         cterm=NONE       ctermfg=210   ctermbg=NONE  gui=NONE       guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight WarningMsg        cterm=NONE       ctermfg=210   ctermbg=NONE  gui=NONE       guifg=#ff8787  guibg=NONE     guisp=NONE
  highlight WildMenu          cterm=NONE       ctermfg=221   ctermbg=237   gui=NONE       guifg=#ffd75f  guibg=#3a3a3a  guisp=NONE
  highlight lCursor           cterm=NONE       ctermfg=NONE  ctermbg=NONE  gui=NONE       guifg=NONE     guibg=NONE     guisp=NONE
  "" FULL-FEATURED }}}
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  """ 16-COLOR PALETTE {{{
  set t_Co=16

  " Syntax groups: convenient highlight groups for syntax highlighting
  highlight Normal         cterm=NONE  ctermfg=7  ctermbg=0
  highlight TextRed        cterm=NONE  ctermfg=1  ctermbg=NONE
  highlight TextGreen      cterm=NONE  ctermfg=2  ctermbg=NONE
  highlight TextYellow     cterm=NONE  ctermfg=3  ctermbg=NONE
  highlight TextBlue       cterm=NONE  ctermfg=4  ctermbg=NONE
  highlight TextMagenta    cterm=NONE  ctermfg=5  ctermbg=NONE
  highlight TextCyan       cterm=NONE  ctermfg=6  ctermbg=NONE
  highlight TextWhite      cterm=NONE  ctermfg=7  ctermbg=NONE
  highlight TextLightGray  cterm=NONE  ctermfg=8  ctermbg=NONE
  " We only get 1 gray on a 16-color palette: color 8
  highlight! link  TextDarkGray  TextLightGray

  " User highlight groups
  highlight User1  cterm=NONE  ctermfg=1  ctermbg=8
  highlight User2  cterm=NONE  ctermfg=2  ctermbg=8
  highlight User3  cterm=NONE  ctermfg=3  ctermbg=8
  highlight User4  cterm=NONE  ctermfg=4  ctermbg=8
  highlight User5  cterm=NONE  ctermfg=5  ctermbg=8
  highlight User6  cterm=NONE  ctermfg=6  ctermbg=8
  highlight User7  cterm=NONE  ctermfg=7  ctermbg=8

  " Editor chrome
  highlight Bold             cterm=bold      ctermfg=NONE ctermbg=NONE
  highlight ColorColumn      cterm=NONE      ctermfg=NONE ctermbg=8
  highlight Conceal          cterm=NONE      ctermfg=4    ctermbg=0
  highlight Cursor           cterm=NONE      ctermfg=0    ctermbg=7
  highlight CursorColumn     cterm=NONE      ctermfg=NONE ctermbg=8
  highlight CursorLine       cterm=NONE      ctermfg=NONE ctermbg=8
  highlight CursorLineNr     cterm=NONE      ctermfg=7    ctermbg=0
  highlight Debug            cterm=NONE      ctermfg=1    ctermbg=NONE
  highlight DiffAdd          cterm=bold      ctermfg=2    ctermbg=8
  highlight DiffChange       cterm=NONE      ctermfg=7    ctermbg=8
  highlight DiffDelete       cterm=NONE      ctermfg=1    ctermbg=8
  highlight DiffText         cterm=bold      ctermfg=3    ctermbg=8
  highlight Directory        cterm=NONE      ctermfg=4    ctermbg=NONE
  highlight EndOfBuffer      cterm=NONE      ctermfg=7    ctermbg=NONE
  highlight Error            cterm=NONE      ctermfg=0    ctermbg=1
  highlight ErrorMsg         cterm=NONE      ctermfg=1    ctermbg=0
  highlight FoldColumn       cterm=NONE      ctermfg=7    ctermbg=0
  highlight Folded           cterm=NONE      ctermfg=7    ctermbg=8
  highlight Ignore           cterm=NONE      ctermfg=0    ctermbg=NONE
  highlight IncSearch        cterm=NONE      ctermfg=8    ctermbg=7
  highlight LineNr           cterm=NONE      ctermfg=7    ctermbg=0
  highlight Macro            cterm=NONE      ctermfg=1    ctermbg=NONE
  highlight MatchParen       cterm=NONE      ctermfg=NONE ctermbg=8
  highlight ModeMsg          cterm=bold      ctermfg=2    ctermbg=NONE
  highlight MoreMsg          cterm=NONE      ctermfg=2    ctermbg=NONE
  highlight NonText          cterm=NONE      ctermfg=7    ctermbg=NONE
  highlight Pmenu            cterm=NONE      ctermfg=7    ctermbg=8
  highlight PmenuSbar        cterm=NONE      ctermfg=NONE ctermbg=8
  highlight PmenuSel         cterm=NONE      ctermfg=3    ctermbg=8
  highlight PmenuThumb       cterm=NONE      ctermfg=NONE ctermbg=8
  highlight Question         cterm=NONE      ctermfg=4    ctermbg=NONE
  highlight QuickFixLine     cterm=underline ctermfg=NONE ctermbg=NONE
  highlight Search           cterm=NONE      ctermfg=8    ctermbg=7
  highlight SignColumn       cterm=NONE      ctermfg=8    ctermbg=0
  highlight SpecialKey       cterm=NONE      ctermfg=7    ctermbg=NONE
  highlight SpellBad         cterm=underline ctermfg=7    ctermbg=0
  highlight SpellCap         cterm=NONE      ctermfg=NONE ctermbg=0
  highlight SpellLocal       cterm=NONE      ctermfg=NONE ctermbg=0
  highlight SpellRare        cterm=NONE      ctermfg=NONE ctermbg=0
  highlight StatusLine       cterm=NONE      ctermfg=7    ctermbg=8
  highlight StatusLineNC     cterm=NONE      ctermfg=7    ctermbg=8
  highlight StatusLineTerm   cterm=NONE      ctermfg=7    ctermbg=8
  highlight StatusLineTermNC cterm=NONE      ctermfg=7    ctermbg=8
  highlight TabLine          cterm=NONE      ctermfg=7    ctermbg=8
  highlight TabLineFill      cterm=NONE      ctermfg=8    ctermbg=8
  highlight TabLineSel       cterm=NONE      ctermfg=3    ctermbg=8
  highlight Title            cterm=NONE      ctermfg=4    ctermbg=NONE
  highlight TooLong          cterm=NONE      ctermfg=1    ctermbg=NONE
  highlight Underlined       cterm=underline ctermfg=1    ctermbg=NONE
  highlight VertSplit        cterm=NONE      ctermfg=0    ctermbg=0
  highlight Visual           cterm=NONE      ctermfg=NONE ctermbg=8
  highlight VisualNOS        cterm=NONE      ctermfg=1    ctermbg=NONE
  highlight WarningMsg       cterm=NONE      ctermfg=1    ctermbg=NONE
  highlight WildMenu         cterm=NONE      ctermfg=3    ctermbg=8
  highlight lCursor          cterm=NONE      ctermfg=NONE ctermbg=NONE
  """ END 16-COLOR PALETTE }}}
endif

""" TERMINAL ANSI COLORS {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = [
        \ '#303030',
        \ '#ff8787',
        \ '#87d787',
        \ '#ffd75f',
        \ '#5f87d7',
        \ '#d787d7',
        \ '#5fd7d7',
        \ '#d0d0d0',
        \ '#767676',
        \ '#ff8787',
        \ '#87d787',
        \ '#ffd75f',
        \ '#5f87d7',
        \ '#d787d7',
        \ '#5fd7d7',
        \ '#d0d0d0',
        \ ]
endif
""" END TERMINAL ANSI COLORS }}}
""" END ENVIRONMENT-DEPENDENT HIGHLIGHTS }}}

""" NON-FT-SPECIFIC SYNTAX {{{
" Base groups: only these groups + Normal will form the foundation of syntax highlighting
highlight! link  Comment  TextLightGray
highlight! link  String   TextGreen
highlight! link  Special  TextCyan
highlight! link  Todo     TextYellow

" Linked groups:
highlight! link  Boolean       Normal
highlight! link  Conditional   Normal
highlight! link  Constant      Normal
highlight! link  Define        Normal
highlight! link  Delimiter     Normal
highlight! link  Exception     Normal
highlight! link  Float         Normal
highlight! link  Function      Normal
highlight! link  Identifier    Normal
highlight! link  Include       Normal
highlight! link  Keyword       Normal
highlight! link  Label         Normal
highlight! link  Macro         Normal
highlight! link  Number        Normal
highlight! link  Operator      Normal
highlight! link  PreProc       Normal
highlight! link  Repeat        Normal
highlight! link  Statement     Normal
highlight! link  StorageClass  Normal
highlight! link  Structure     Normal
highlight! link  Type          Normal
highlight! link  Typedef       Normal
highlight! link  Character     String
highlight! link  SpecialChar   Special
highlight! link  Tag           Todo

" Clear italic, I don't like it
highlight clear Italic
""" END NON-FT-SPECIFIC SYNTAX }}}

""" FT-SPECIFIC SYNTAX {{{
"" Mostly just making sure straggler highlight groups are linked back to Normal
"" With a few exceptions getting their own colors

" Diff
" Color is natural for diffs
highlight! link  DiffFile     TextCyan
highlight! link  DiffLine     TextBlue
highlight! link  DiffAdded    TextGreen
highlight! link  DiffNewFile  TextGreen
highlight! link  DiffRemoved  TextRed

" Git
" Color is useful for Git commits, where certain information must stick out of a sea of text
" Color is also useful for the "diff-like" highlight groups, such as Selected, Discarded, etc
highlight! link  gitcommitComment        Comment
highlight! link  gitcommitUntracked      Comment
highlight! link  gitcommitDiscarded      Comment
highlight! link  gitcommitSelected       Comment
highlight! link  gitcommitHeader         Comment
highlight! link  gitcommitOverflow       TextRed
highlight! link  gitcommitBranch         TextCyan
highlight! link  gitcommitSummary        TextGreen
highlight! link  gitcommitSelectedType   TextGreen
highlight! link  gitcommitSelectedFile   TextGreen
highlight! link  gitcommitUnmergedType   TextRed
highlight! link  gitcommitUnmergedFile   TextRed
highlight! link  gitcommitDiscardedFile  TextRed
highlight! link  gitcommitDiscardedType  TextRed
highlight! link  gitcommitUntrackedFile  TextRed

" Fugitive
" Stick to Git colors as close as possible
highlight! link  diffSubname                Comment
highlight! link  fugitiveHash               Comment
highlight! link  fugitiveModifier           TextRed
highlight! link  fugitiveUnstagedModifier   TextRed
highlight! link  fugitiveUntrackedModifier  TextRed
highlight! link  fugitiveStagedModifier     TextGreen

" HTML
highlight! link  htmlBold            Normal
highlight! link  htmlItalic          Normal
highlight! link  htmlArg             Normal
highlight! link  htmlEndTag          Normal
highlight! link  htmlSpecialChar     Normal
highlight! link  htmlSpecialTagName  Normal
highlight! link  htmlTag             Normal
highlight! link  htmlTagName         Normal
highlight! link  htmlTitle           Normal
highlight! link  htmlH1              Normal
highlight! link  htmlH2              Normal
highlight! link  htmlH3              Normal
highlight! link  htmlH4              Normal
highlight! link  htmlH5              Normal
highlight! link  htmlH6              Normal
highlight! link  htmlLink            Special

" Pug
highlight! link  pugClassChar     Normal
highlight! link  pugClass         Normal
highlight! link  pugIdChar        Normal
highlight! link  pugPipeChar      Normal
highlight! link  pugTagBlockChar  Normal

" CSS
highlight! link  cssAttr            Normal
highlight! link  cssAttrComma       Normal
highlight! link  cssBraces          Normal
highlight! link  cssClassName       Normal
highlight! link  cssColor           Normal
highlight! link  cssImportant       Normal
highlight! link  cssKeyFrameProp    Normal
highlight! link  cssProp            Normal
highlight! link  cssPseudoClassId   Normal
highlight! link  cssUnitDecorators  Normal
highlight! link  cssValueLength     Normal
highlight! link  cssValueNumber     Normal
highlight! link  cssValueTime       Normal
highlight! link  cssVendor          Normal

" JavaScript
" Highlighting directives in JSDoc/ESDoc comments is useful
highlight! link  jsDocTags            TextBlue
highlight! link  javaScript           Normal
highlight! link  javaScriptBraces     Normal
highlight! link  jsArrowFunction      Normal
highlight! link  jsBuiltins           Normal
highlight! link  jsCatch              Normal
highlight! link  jsClassDefinition    Normal
highlight! link  jsClassFuncName      Normal
highlight! link  jsDocParam           Normal
highlight! link  jsDocType            Normal
highlight! link  jsDocTypeNoParam     Normal
highlight! link  jsException          Normal
highlight! link  jsExceptions         Normal
highlight! link  jsFuncCall           Normal
highlight! link  jsGlobalNodeObjects  Normal
highlight! link  jsGlobalObjects      Normal
highlight! link  jsNull               Normal
highlight! link  jsObjectKey          Normal
highlight! link  jsPrototype          Normal
highlight! link  jsRegexpQuantifier   Normal
highlight! link  jsRegexpString       Normal
highlight! link  jsReturn             Normal
highlight! link  jsSpecial            Normal
highlight! link  jsSuper              Normal
highlight! link  jsTaggedTemplate     Normal
highlight! link  jsThis               Normal
highlight! link  jsTry                Normal
highlight! link  jsUndefined          Normal

" JSX
highlight! link  typescriptStringS      String
highlight! link  typescriptComment      Comment
highlight! link  typescriptLineComment  Comment
highlight! link  typescriptDocComment   Comment
highlight! link  typescriptCommentTodo  Todo
highlight! link  jsxBraces              Normal
highlight! link  jsxOpenPunct           Normal
highlight! link  jsxCloseString         Normal

" TypeScript
highlight! link  typescriptDecorators     Normal
highlight! link  typescriptExceptions     Normal
highlight! link  typescriptExport         Normal
highlight! link  typescriptGlobalObjects  Normal
highlight! link  typescriptImport         Normal
highlight! link  typescriptTry            Normal

" Shell
" Highlighting parameter expansions within a string is useful
highlight! link  shDeref         TextCyan
highlight! link  shCmdSubRegion  Normal
highlight! link  shCommandSub    Normal
highlight! link  shOption        Normal

" Mail
" Highlighting different quote levels is useful
highlight! link  mailQuoted1  TextYellow
highlight! link  mailQuoted2  TextGreen
highlight! link  mailQuoted3  TextMagenta
highlight! link  mailQuoted4  TextCyan
highlight! link  mailQuoted5  TextBlue
highlight! link  mailQuoted6  TextYellow
highlight! link  mailEmail    TextBlue
highlight! link  mailURL      TextBlue

" Markdown
" Highlighting headings and code blocks is useful
highlight! link  markdownError             Normal
highlight! link  markdownCode              TextGreen
highlight! link  markdownCodeBlock         TextGreen
highlight! link  markdownHeadingDelimiter  TextBlue

" Vim
" Highlighting conventional comment titles (e.g. Author, etc) is useful
highlight! link  vimCommentTitle    TextYellow
highlight! link  vimAddress         Normal
highlight! link  vimAutoEvent       Normal
highlight! link  vimBracket         Normal
highlight! link  vimContinue        Normal
highlight! link  vimEnvvar          Normal
highlight! link  vimFuncSID         Normal
highlight! link  vimGroup           Normal
highlight! link  vimHiAttrib        Normal
highlight! link  vimHiGroup         Normal
highlight! link  vimHiGuiRgb        Normal
highlight! link  vimHiNmbr          Normal
highlight! link  vimHiTerm          Normal
highlight! link  vimMapMod          Normal
highlight! link  vimMapModKey       Normal
highlight! link  vimNotation        Normal
highlight! link  vimOption          Normal
highlight! link  vimPatSep          Normal
highlight! link  vimSetSep          Normal
highlight! link  vimSubstFlags      Normal
highlight! link  vimSynOption       Normal
highlight! link  vimSynReg          Normal
highlight! link  vimUserAttrb       Normal
highlight! link  vimUserAttrbCmplt  Normal

" Vim Help
" Highlighting tags you can <C-]> on is useful
highlight! link  helpHyperTextJump  TextMagenta

" Netrw
" Stick to ls colors as close as possible
highlight! link  netrwExe  TextGreen

" Kickfix
" Zebra highlighting in the quickfix is useful
highlight! link  qfFileName1  TextBlue
highlight! link  qfFileName2  TextCyan
highlight! link  qfZebra1     Normal
highlight! link  qfZebra2     Normal

" Vimwiki
" Highlighting links you can <CR> on is useful
highlight! link  VimwikiCode  TextMagenta
highlight! link  VimwikiLink  TextMagenta
highlight! link  VimwikiPre   Normal

" Tmux
highlight! link  tmuxKey  Normal

" i3
highlight! link  i3ConfigVariableModifier  Normal
highlight! link  i3ConfigString            String
""" END FT-SPECIFIC SYNTAX }}}

" vim: fdm=marker:nowrap:tw=0
