"========================================================
" Highlight Own DataType
"========================================================
"syn keyword cType   GtkWidget gint gboolean gchar gpointer
"========================================================
" Highlight All Function
"========================================================
syn match     cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match     cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction          cterm=bold ctermfg=2
"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match         cMathOperator      display "[-+\*/%=]"
" C pointer operators
syn match         cPointerOperator display "->\|\."
" C logical     operators - boolean results
syn match         cLogicalOperator display "[!<>]=\="
syn match         cLogicalOperator display "=="
" C bit operators
syn match         cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
syn match         cBinaryOperator display "\~"
syn match         cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
syn match         cLogicalOperator display "&&\|||"
syn match         cLogicalOperatorError display "\(&&\|||\)="
" C brackets
syn match         cBrackets display "[{}]"
" Math Operator
hi cMathOperator         ctermfg=6
hi cPointerOperator      ctermfg=6
hi cLogicalOperator      ctermfg=6
hi cBinaryOperator       ctermfg=6
hi cBinaryOperatorError  ctermfg=1
hi cLogicalOperator      ctermfg=6
hi cLogicalOperatorError ctermfg=1
hi cBrackets             cterm=bold ctermfg=4
