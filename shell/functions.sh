# Use 'o' instead of 'open' (o ~/Sites will open the sites folder)
# If no arguments are supplied open the current folder
function o {
  if [ "$1" != "" ]; then
    open $1
  else
    open .
  fi
}

# If no arguments are supplied open the current folder with TextMate
function m {
  if [ "$1" != "" ]; then
    mate $1
  else
    et
  fi
}

# Display a random hint
function hint {
  fn=~/.dotfiles/lib/hints.txt
  sed -n $(awk "END{ print $RANDOM%NR+1}" $fn)p $fn
}

# Restart passenger server
function rp {
  touch tmp/restart.txt
  echo 'Restarting passenger server...'
}