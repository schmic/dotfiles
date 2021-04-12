function _update_ps1() {
    PS1="$($HOME/bin/powerline-go -hostname-only-if-ssh -newline -error $?)"
    set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$HOME/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
