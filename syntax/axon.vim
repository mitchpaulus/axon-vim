if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword AxonBoolean true false
syntax keyword AxonKeyword and defcomp deflinks do else end if not or return
syntax keyword AxonException try catch throw
syntax keyword AxonNull null
syntax region AxonComment start=/\/\// end=/$/
syntax region AxonComment start=/\/\*/ end=/\*\//

highlight link AxonBoolean Boolean
highlight link AxonException Exception
highlight link AxonKeyword Keyword
highlight link AxonComment Comment
highlight link AxonNull Type

let b:current_syntax="axon"
