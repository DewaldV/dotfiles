## Deps: readline-devel
RBENV_HOME="${HOME}/.rbenv"

if [ -d "${RBENV_HOME}" ]; then
  if which rbenv &> /dev/null; then eval "$(rbenv init -)"; fi
fi
