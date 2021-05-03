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

