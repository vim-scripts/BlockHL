" blockhl.vim: highlights different levels of {} with different shades of
"              grey.  Only good for gvim and C/C++.
"  Author: Charles E. Campbell, Jr.
"  Date:   Jun 30, 2004
"  Version: 3
"  History:
"     3  : Jun 30, 2004: now supports dark and light background settings
"     2  : Jun 24, 2002: has("menu") now part of test
"     1  : the epoch   :
if has("gui_running") && has("menu")
  if version < 508
    command! -nargs=+ HiLink hi <args>
  else
    command! -nargs=+ HiLink hi def <args>
  endif

  syn cluster cCurlyGroup	   contains=cConditional,cConstant,cLabel,cOperator,cRepeat,cStatement,cStorageClass,cStructure,cType,cBitField,cCharacter,cCommentError,cInclude,cNumbers,cParenError,cPreCondit,cSpaceError,cSpecialCharacter,cSpecialError,cUserCont,cBracket,cComment,cCommentL,cCppOut,cCppString,cDefine,cMulti,cParen,cPreCondit,cPreProc,cString
  syn region cCurly1		   transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead1,@cCurlyGroup,cCurly2
  syn region cCurly2 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead2,@cCurlyGroup,cCurly3
  syn region cCurly3 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead3,@cCurlyGroup,cCurly4
  syn region cCurly4 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead4,@cCurlyGroup,cCurly5
  syn region cCurly5 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead5,@cCurlyGroup,cCurly6
  syn region cCurly6 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead6,@cCurlyGroup,cCurly7
  syn region cCurly7 contained transparent	matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" contains=cLead7,@cCurlyGroup,cCurly1

  syn match  cLead1	contained	"^\s\+"
  syn match  cLead2	contained	"^\s\+"
  syn match  cLead3	contained	"^\s\+"
  syn match  cLead4	contained	"^\s\+"
  syn match  cLead5	contained	"^\s\+"
  syn match  cLead6	contained	"^\s\+"
  syn match  cLead7	contained	"^\s\+"
  
  if &bg == "dark"
   HiLink cLead1 term=NONE cterm=NONE gui=NONE guibg=grey10
   HiLink cLead2 term=NONE cterm=NONE gui=NONE guibg=grey20
   HiLink cLead3 term=NONE cterm=NONE gui=NONE guibg=grey25
   HiLink cLead4 term=NONE cterm=NONE gui=NONE guibg=grey30
   HiLink cLead5 term=NONE cterm=NONE gui=NONE guibg=grey35
   HiLink cLead6 term=NONE cterm=NONE gui=NONE guibg=grey40
   HiLink cLead7 term=NONE cterm=NONE gui=NONE guibg=grey45
  else
   HiLink cLead1 term=NONE cterm=NONE gui=NONE guibg=grey90
   HiLink cLead2 term=NONE cterm=NONE gui=NONE guibg=grey80
   HiLink cLead3 term=NONE cterm=NONE gui=NONE guibg=grey75
   HiLink cLead4 term=NONE cterm=NONE gui=NONE guibg=grey70
   HiLink cLead5 term=NONE cterm=NONE gui=NONE guibg=grey65
   HiLink cLead6 term=NONE cterm=NONE gui=NONE guibg=grey60
   HiLink cLead7 term=NONE cterm=NONE gui=NONE guibg=grey55
  endif
endif

" vim: ts=4
