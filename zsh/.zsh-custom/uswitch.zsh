## From https://github.com/uswitch/u
if which u &> /dev/null; then eval "$(u --completion-script-zsh)"; fi

func golnusw() {
  local project=${1}
  ln -s ~/Projects/${project} ${GOPATH}/src/github.com/uswitch/${project}
}

func godev() {
  cd ${GOPATH}/src/github.com/${1}
}

func wval() {
  watson start value $@
}

func wtoil() {
  watson start toil $@
}

func wadmin() {
  watson start admin $@
}

func meeting() {
  watson start meeting $@
}
