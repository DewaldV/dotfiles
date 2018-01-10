NODENV_HOME="${HOME}/.nodenv"

if [ -d "${NODENV_HOME}" ]; then
  if which NODENV &> /dev/null; then eval "$(nodenv init -)"; fi
fi
