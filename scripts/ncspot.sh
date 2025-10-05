
#!/bin/bash

# cria sessão music com ncspot
tmux new-session -d -s music -n main 'ncspot'

# split vertical na janela 0 da sessão music, rodando cava
tmux split-window -t music:0 -v -p 10 'cava'

# alterna para o próximo pane (equivalente a Ctrl+b o)
tmux select-pane -t music:0.+

# redimensiona o painel atual (cava) para aumentar 15 linhas
tmux resize-pane -t music:0.+ -D 55

# volta para o outro pane (ncspot)
tmux select-pane -t music:0.+
bind -r j select-pane -D 20
# entra na sessão
tmux attach-session -t music
if [ -n "$TMUX" ]; then
  tmux switch-client -t music
else
  tmux attach-session -t music
fi

