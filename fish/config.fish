set -gx PATH $PATH /home/chris/bin
set -gx PATH $PATH /home/chris/.cargo/bin
set -gx PATH $PATH /snap/bin
set -gx PATH $PATH /home/chris/appimage
set -gx PATH $PATH /home/chris/.pyenv
set -gx PATH $PATH /home/chris/.pyenv/bin

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

eval (python -m virtualfish)
