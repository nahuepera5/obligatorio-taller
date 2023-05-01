#!/bin/bash

letter='a'
touch .words
> .words

request_letter () {
	newLetter='a'
	#echo "ingrese una letra: "
	read -p 'ingrese una letra: ' newLetter
	echo $newLetter
}

search_words () {
	regular_expresion_letter="\b$1\w*\b"
	grep -io $regular_expresion_letter diccionario.txt > .words
}

show_words () {
	cat .words
}

show_words_number () {
	grep --count '' .words
}

create_words_file () {
	touch	words.txt
	cat .words > words.txt
}

letter=`request_letter`

search_words $letter
#show_words
show_words_number
create_words_file
