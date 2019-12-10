# vim-todofile

A vim plugin that implements todofiles.

![screenshot](https://raw.githubusercontent.com/SabbathHex/vim-todofile/master/sample.png)

## Features

This plugin provides a way to create 3-section file with parts for items that are to be done (# TODO), to be followed-up (# FOLLOWUP) and items that were done already (# DONE).

There is an extra section at the bottom titled "#TAGS" that allows quickly adding words to the word completion.

Plugin implements shortcuts that move the task line to the corresponding section:

* `ctrl+t` moves the line to # TODO
* `ctrl+d` moves the line to # DONE
* `ctrl+f` moves the line to # FOLLOWUP


## Installing

Use your vim plugin manager to install `SabbathHex/vim-todofile`.

## Optional stuff

Using [auto-save](https://github.com/907th/vim-auto-save) in conjunction with vim session mechanism allows to turn this plugin into a todo application

NoMatchParen(or other way to disable parentheses highlighting) is also recommended.

	augroup _todofile_vimrc
		autocmd FileType todofile
					\ let b:auto_save = 1 |
					\ NoMatchParen
	augroup END
