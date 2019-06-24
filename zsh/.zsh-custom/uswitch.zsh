## From https://github.com/uswitch/u
if which u &> /dev/null; then eval "$(u --completion-script-zsh)"; fi

func golnusw() {
  local project=${1}
  ln -s ~/Projects/${project} ${GOPATH}/src/github.com/uswitch/${project}
}

func godev() {
  cd ${GOPATH}/src/github.com/${1}
}

func waval() {
  watson start value $@
}

func watoil() {
  watson start toil $@
}

func waover() {
  watson start overhead $@
}

func wastop() {
  watson stop
}
