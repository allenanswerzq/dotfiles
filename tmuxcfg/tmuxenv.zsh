
if [ -n "$TMUX" ]; then
  function refresh {
		eval $(tmux showenv -s DISPLAY)
		eval $(tmux showenv -s SSH_AUTH_SOCK)
  }
else
  function refresh { }
fi

# execute when every time I typed on cmdline
function preexec {
    echo "<_____________"
    refresh
}
