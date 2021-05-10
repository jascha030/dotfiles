function dotf(){
	case "$1" in
		"zsh")
		NAVDIR="$DOTFILES/.zshrc";;
		"antigen")
		NAVDIR="$DOTFILES/.antigenrc";;
		"aliases")
		NAVDIR="$DOTFILES/shell/aliases.zsh";;
		"path")
		NAVDIR="$DOTFILES/shell/path.zsh";;
		*)
		echo >&2 "Unknown option"; exit;;	
	esac

	edit "$NAVDIR"
}

function brwsave() {
	COMMAND="brew install "
	
	echo "What kind of package are we installing?"
	
	select CASK in "Binary" "Cask"
	do
		case $CASK in 
			"Cask")
			COMMAND="$COMMAND --cask"
			FILE_PREFIX="cask"
			break;
			;;
			"Binary")
			FILE_PREFIX="brew"
			break;
			;;
		*)
			echo "Error! This is not an option..."
			&>2 exit 1
			break;
			;;
		esac
	done

	echo "Which one? \n"
	read PACKAGE
	echo "Okay"
	
	if ! ($COMMAND $PACKAGE); then
		echo "Something went wrong, could not install $PACKAGE..."
		exit 1;
	fi
	

	if read -q "choice? Save to Brewfile? Y/y: "; then
        	echo 
		(echo "$FILE_PREFIX \"$PACKAGE\" \n")
    	else
        	echo
        	echo "Okay, just trying it out hmm."
    	fi

	echo "Bye!"
}

