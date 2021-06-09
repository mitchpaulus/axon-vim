if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax match TrioTagName "^[a-zA-Z_]\+:"
highlight link TrioTagName Identifier

syntax keyword ZincNull N
highlight link ZincNull Keyword

syntax keyword ZincMarker M
highlight link ZincMarker Keyword

syntax keyword ZincRemove R
highlight link ZincRemove Keyword

syntax keyword ZincNA NA
highlight link ZincNA Keyword

syntax keyword ZincBool T F
highlight link ZincBool Boolean

" TODO: Number

syntax region ZincString start=/"/ end=/"/ skip=/\\"/
highlight link ZincString String

syntax region ZincUri start=/`/ end=/`/
highlight link ZincUri String

" TODO: Ref

syntax match ZincSymbol "\^[a-zA-Z0-9_:.~-]\+"
highlight link ZincSymbol Type

syntax match ZincDate  "[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]"
highlight link ZincDate Constant

" TODO: Time

" TODO: Fix coords
syntax match ZincCoord "C([0-9]\+,[0-9]\+)"
highlight link ZincCoord Constant

" TODO: XStr

" Don't need to highlight meta-literals List, Dict

syntax match ZincGridOpenClose "<<\|>>"
highlight link ZincGridOpenClose Operator

syntax match TrioEntitySeparator "^-\+"
highlight link TrioEntitySeparator Comment

syntax region TrioComment start="\/\/" end="$"
highlight link TrioComment Comment

let b:current_syntax="trio"
