if exists("b:current_syntax")
        finish
endif
let b:current_syntax = "todofile"
syn match sectionNameTODO "^# TODO"
syn match sectionNameDONE "^# DONE"
syn match sectionNameFOLLOWUP "^# FOLLOWUP"
syn match lineComment "\(^\)\@<!#.*$"
syn match lineTag "^\[.\{-}\]"
syn match completeTagLine "^#TAGS.*"
syn match importantTaskWithoutTag "^[^\[].*(!)"
syn match importantTaskWithTag "\(]\)\@<=\( \)\?\zs.*(!)\ze"

hi def lineComment ctermfg=67.cterm256 cterm=bold
hi def link completeTagLine Constant
hi def sectionNameDONE ctermbg=Green ctermfg=Black
hi def sectionNameTODO ctermbg=LightMagenta ctermfg=Black
hi def sectionNameFOLLOWUP ctermbg=Yellow ctermfg=Black
hi def lineTag ctermfg=191.cterm256 cterm=bold
hi def importantTaskWithoutTag ctermfg=Black ctermbg=Red
hi def importantTaskWithTag ctermfg=Black ctermbg=Red
