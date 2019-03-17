# function to set terminal title
function set-title(){
  if [[ -z "$ORIG" ]]; then
    ORIG="$PS1"
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1="${ORIG}${TITLE}"
}

# generate the tags and cscope
function ta(){
	#clean older info
	rm -rf tags
	rm -rf cscope.files
	rm -rf cscope.out
	#generate new info
	find $PWD | egrep -i "\.(c|h|cpp)$" > cscope.files
	ctags -R . *.c *.h *.cpp --tag-relative=yes ./
}

PS1='\[\e[33;1m\]\u@\h: \[\e[31m\]\W\[\e[0m\]\$ '
