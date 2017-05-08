## Deps: readline-devel
RBENV_HOME="${HOME}/.rbenv"

if [ -d "${RBENV_HOME}" ]; then
  export PATH="${RBENV_HOME}/bin:${PATH}"
  if which rbenv &> /dev/null; then eval "$(rbenv init -)"; fi
fi
