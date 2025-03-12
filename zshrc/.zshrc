eval "$(starship init zsh)"
eval "$(pyenv init -)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word

# pnpm
export PNPM_HOME="/home/ujjujjuj/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "/home/ujjujjuj/.deno/env"

export PATH="$PATH:/home/ujjujjuj/.cargo/bin"
export PATH="$PATH:/home/ujjujjuj/.avm/bin"

# bun completions
[ -s "/home/ujjujjuj/.bun/_bun" ] && source "/home/ujjujjuj/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/home/ujjujjuj/.local/share/solana/install/active_release/bin:$PATH"
export ANDROID_HOME="/home/ujjujjuj/Android/Sdk"

export PATH="$PATH:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"
