HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
FZF_BASE="$HOME/.fzf"

# Alias
ALIASFILE=$HOME/.zalias
if test -f "$ALIASFILE"; then
   . $ALIASFILE
fi

CUSTOMALIASFILE=$HOME/.zcustomalias
if test -f "$CUSTOMALIASFILE"; then
   . $CUSTOMALIASFILE
fi

# Find out which distribution we are running on
LFILE="/etc/os-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

export STARSHIP_OS=$_distro

# Exa colors Configurations
export LS_COLORS="*.md=36"
export EXA_COLORS="da=1;34:ln=1;34:lp=1;35:ur=1;34:uw=1;34:ux=1;34:ue=1;34:gr=1;34:gw=1;34:gx=1;34:tr=1;34:tw=1;34:tx=1;34:uu=1;32:un=1;34:gu=1;32:gn=1;32:sn=1;34:sb=1;34:hd=1;34"


# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($HOME/.zsh/zsh-completions/src $fpath)

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Starship
eval "$(starship init zsh)"
