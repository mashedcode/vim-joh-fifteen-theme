" Copyright 2017 mash
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"    http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.
"
" Color scheme based on Molokai by Tomas Restrepo and badwolf by Steve Losh.
" Fork of harlequin theme by Niels Madan.

highlight clear

if exists('syntax_on')
  syntax reset
endif

if &t_Co != 256
  finish
endif

let g:colors_name = 'joh-fifteen'

let s:black = 0
let s:white = 15
let s:moss = 22
let s:frost = 68
let s:auburn = 88
let s:mordant = 124
let s:lilac = 141
let s:lime = 154
let s:brick = 167
let s:pink = 198
let s:gold = 214
let s:sunny = 228
let s:greys = [250, 244, 242, 240, 236, 232]

let s:text = s:white

function! s:Highlight(group, foreground, background, attributes)
  if empty(a:foreground)
    let l:foreground = 'fg'
  else
    let l:foreground = a:foreground
  endif
  if empty(a:background)
    let l:background = 'none'
  else
    let l:background = a:background
  endif
  if empty(a:attributes)
    let l:attributes = 'none'
  else
    let l:attributes = a:attributes
  endif

  let l:cmd = 'highlight ' . a:group . ' ctermfg=' . l:foreground
  let l:cmd = l:cmd . ' ctermbg=' . l:background . ' cterm=' . l:attributes
  execute l:cmd
endfunction

call s:Highlight('Normal', s:text, '', '')

call s:Highlight('Statement', s:pink, '', 'bold')
call s:Highlight('Keyword', s:pink, '', 'bold')
call s:Highlight('Conditional', s:pink, '', 'bold')
call s:Highlight('Operator', s:pink, '', '')
call s:Highlight('Label', s:pink, '', '')
call s:Highlight('Repeat', s:pink, '', 'bold')

call s:Highlight('Type', s:brick, '', '')
call s:Highlight('StorageClass', s:pink, '', '')
call s:Highlight('Structure', s:pink, '', '')
call s:Highlight('TypeDef', s:pink, '', 'bold')

call s:Highlight('Exception', s:lime, '', 'bold')
call s:Highlight('Include', s:lime, '', 'bold')

call s:Highlight('PreProc', s:lime, '', '')
call s:Highlight('Macro', s:lime, '', '')
call s:Highlight('Define', s:lime, '', '')
call s:Highlight('Delimiter', s:lime, '', '')
call s:Highlight('Ignore', s:lime, '', '')
call s:Highlight('PreCondit', s:lime, '', 'bold')
call s:Highlight('Debug', s:lime, '', 'bold')

call s:Highlight('Function', s:gold, '', '')
call s:Highlight('Identifier', s:gold, '', '')

call s:Highlight('Comment', s:frost, '', '')
call s:Highlight('CommentEmail', s:frost, '', 'underline')
call s:Highlight('CommentUrl', s:frost, '', 'underline')
call s:Highlight('SpecialComment', s:frost, '', 'bold')
call s:Highlight('Todo', s:frost, '', 'bold')

call s:Highlight('String', s:sunny, '', '')
call s:Highlight('SpecialKey', s:lilac, '', 'bold')
call s:Highlight('Special', s:lilac, '', 'bold')
call s:Highlight('SpecialChar', s:lilac, '', 'bold')

call s:Highlight('Boolean', s:lilac, '', 'bold')
call s:Highlight('Character', s:lilac, '', 'bold')
call s:Highlight('Number', s:lilac, '', 'bold')
call s:Highlight('Constant', s:lilac, '', 'bold')
call s:Highlight('Float', s:lilac, '', 'bold')

call s:Highlight('FoldColumn', s:greys[1], s:black, '')
call s:Highlight('Folded', s:greys[1], s:black, '')

call s:Highlight('MatchParen', s:black, s:gold, 'bold')

call s:Highlight('LineNr', s:greys[1], '', '')
call s:Highlight('NonText', s:greys[2], '', '')
call s:Highlight('CursorColumn', '', s:greys[5], '')
call s:Highlight('CursorLine', '', s:greys[5], '')
call s:Highlight('SignColumn', '', '', '')
call s:Highlight('ColorColumn', '', s:greys[3], '')

call s:Highlight('Error', s:mordant, s:greys[5], 'bold')
call s:Highlight('ErrorMsg', s:mordant, '', 'bold')
call s:Highlight('WarningMsg', s:mordant, '', '')

call s:Highlight('Cursor', s:greys[5], s:white, '')
call s:Highlight('vCursor', s:greys[5], s:white, '')
call s:Highlight('iCursor', s:greys[5], s:white, '')

call s:Highlight('StatusLine', s:white, s:black, 'bold')
call s:Highlight('StatusLineNC', s:greys[1], s:greys[5], 'bold')
call s:Highlight('VertSplit', s:greys[1], s:greys[5], 'bold')

call s:Highlight('ModeMsg', s:sunny, '', 'bold')

if has('spell')
  call s:Highlight('SpellBad', '', '', 'undercurl')
  call s:Highlight('SpellCap', '', '', 'undercurl')
  call s:Highlight('SpellLocal', '', '', 'undercurl')
  call s:Highlight('SpellRare', '', '', 'undercurl')
endif

call s:Highlight('VisualNOS', '', s:greys[4], '')
call s:Highlight('Visual', '', s:greys[4], '')
call s:Highlight('Search', s:black, s:frost, '')
call s:Highlight('IncSearch', s:black, s:sunny, '')

call s:Highlight('Pmenu', s:black, s:gold, '')
call s:Highlight('PmenuSel', s:gold, s:black, 'bold')
call s:Highlight('Pmenu', '', s:greys[5], '')
call s:Highlight('Pmenu', s:frost, '', '')

call s:Highlight('DiffDelete', s:auburn, s:auburn, '')
call s:Highlight('DiffText', '', s:greys[3], '')
call s:Highlight('DiffChange', '', s:greys[4], '')
call s:Highlight('DiffAdd', '', s:moss, '')

call s:Highlight('Underlined', '', '', 'underline')

call s:Highlight('Directory', s:lime, '', '')
call s:Highlight('Question', s:lime, '', '')
call s:Highlight('MoreMsg', s:lime, '', '')

call s:Highlight('WildMenu', s:black, s:lilac, 'bold')

call s:Highlight('Title', '', '', 'underline')

call s:Highlight('Tag', '', '', 'bold')

" Python
call s:Highlight('pythonDecorator', s:pink, '', '')
call s:Highlight('pythonException', s:lime, '', 'bold')
call s:Highlight('pythonExceptions', s:lime, '', '')

" Ruby
call s:Highlight('rubyModule', s:lime, '', '')
call s:Highlight('rubyModuleNameTag', s:text, '', '')
call s:Highlight('rubyPseudoVariable', s:text, '', '')
call s:Highlight('rubyClass', s:pink, '', '')
call s:Highlight('rubyClassNameTag', s:gold, '', '')
call s:Highlight('rubyDefine', s:pink, '', '')
call s:Highlight('rubyConstant', s:text, '', '')
call s:Highlight('rubyStringDelimiter', s:sunny, '', '')
call s:Highlight('rubyInterpolation', s:lilac, '', '')
call s:Highlight('rubyInterpolationDelimiter', s:lilac, '', '')

" JavaScript
call s:Highlight('javaScriptNull', s:lilac, '', 'bold')
call s:Highlight('javaScriptNumber', s:lilac, '', 'bold')
call s:Highlight('javaScriptFunction', s:pink, '', '')
call s:Highlight('javaScriptOperator', s:pink, '', 'bold')
call s:Highlight('javaScriptBraces', s:text, '', '')
call s:Highlight('javaScriptIdentifier', s:brick, '', '')
call s:Highlight('javaScriptMember', s:gold, '', '')
call s:Highlight('javaScriptType', s:gold, '', '')

" Clojure
call s:Highlight('clojureDefine', s:pink, '', '')
call s:Highlight('clojureSpecial', s:pink, '', '')
call s:Highlight('clojureCond', s:pink, '', '')
call s:Highlight('clojureParen0', s:text, '', '')
call s:Highlight('clojureMacro', s:lime, '', 'bold')
call s:Highlight('clojureDispatch', s:lilac, '', 'bold')
call s:Highlight('clojureError', s:black, s:mordant, 'bold')

" Scala
call s:Highlight('scalaClassName', s:gold, '', '')
call s:Highlight('scalaConstructor', s:text, '', '')

" Vimscript
call s:Highlight('vimCommentTitle', s:frost, '', 'bold')
call s:Highlight('vimParenSep', s:text, '', '')
call s:Highlight('vimSep', s:text, '', '')
call s:Highlight('vimOper', s:text, '', '')

" XML
call s:Highlight('xmlProcessingDelim', s:brick, '', '')
call s:Highlight('xmlNamespace', s:gold, '', '')
call s:Highlight('xmlTag', s:gold, '', '')
call s:Highlight('xmlTagName', s:gold, '', '')
call s:Highlight('xmlEndTag', s:gold, '', '')
call s:Highlight('xmlAttrib', s:brick, '', '')
call s:Highlight('xmlAttribPunct', s:brick, '', '')
call s:Highlight('xmlEntity', s:lilac, '', 'bold')
call s:Highlight('xmlEntityPunct', s:lilac, '', '')

" HTML
call s:Highlight('htmlTagName', s:gold, '', '')
call s:Highlight('htmlTag', s:gold, '', '')
call s:Highlight('htmlTagN', s:gold, '', '')
call s:Highlight('htmlEvent', s:brick, '', '')
call s:Highlight('htmlEventDQ', s:lime, '', '')
call s:Highlight('htmlH1', '', '', 'bold')
call s:Highlight('htmlH2', '', '', 'bold')
call s:Highlight('htmlH3', '', '', 'italic')
call s:Highlight('htmlH4', '', '', 'italic')
call s:Highlight('htmlScriptTag', s:lime, '', '')

" HTML/JavaScript
call s:Highlight('javaScript', s:text, '', '')

" CSS
call s:Highlight('cssSelectorOp', s:text, '', '')
call s:Highlight('cssSelectorOp2', s:text, '', '')
call s:Highlight('cssBraces', s:text, '', '')
call s:Highlight('cssPseudoClass', s:lime, '', '')
call s:Highlight('cssValueNumber', s:lilac, '', '')
call s:Highlight('cssValueLength', s:lilac, '', '')
call s:Highlight('cssColor', s:lilac, '', '')
call s:Highlight('cssImportant', s:lime, '', 'bold')
call s:Highlight('cssCommonAttr', s:lilac, '', 'bold')
call s:Highlight('cssRenderAttr', s:lilac, '', 'bold')
call s:Highlight('cssBoxAttr', s:lilac, '', 'bold')
call s:Highlight('cssUIAttr', s:lilac, '', 'bold')
call s:Highlight('cssTextAttr', s:lilac, '', 'bold')
call s:Highlight('cssTableAttr', s:lilac, '', 'bold')
call s:Highlight('cssColorAttr', s:lilac, '', 'bold')

" minibufexpl
call s:Highlight('MBENormal', s:greys[1], '', '')
call s:Highlight('MBEVisibleNormal', s:white, '', 'bold')
call s:Highlight('MBEVisibleActive', s:frost, '', 'bold')
call s:Highlight('MBEChanged', s:greys[1], '', 'italic')
call s:Highlight('MBEVisibleChanged', s:white, '', 'bold,italic')
call s:Highlight('MBEVisibleChangedActive', s:frost, '', 'bold,italic')

" CtrlP
call s:Highlight('CtrlPNoEntries', s:mordant, '', '')
call s:Highlight('CtrlPPrtBase', '', '', 'bold')

" taglist.vim
call s:Highlight('TagListTitle', s:white, '', 'bold')
