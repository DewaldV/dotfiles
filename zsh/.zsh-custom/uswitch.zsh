## From https://github.com/uswitch/u
if which u &> /dev/null; then eval "$(u --completion-script-zsh)"; fi

func usw_go_ln() {
  local project=${1}
  ln -s ~/Projects/${project} ${GOROOT}/src/github.com/uswitch/${project}
}
