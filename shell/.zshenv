export CNC_HOME=$HOME/.cnc
export LC_ALL=en_US.UTF-8
export ZPLUG_HOME=/usr/local/opt/zplug

fpath=(
  $CNC_HOME/functions
  $fpath 
)

typeset -U fpath
