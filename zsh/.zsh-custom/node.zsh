NODENV_HOME="${HOME}/.nodenv"

if [ -d "${NODENV_HOME}" ]; then
  export PATH="${NODENV_HOME}/bin:${PATH}"
  if which NODENV &> /dev/null; then eval "$(nodenv init -)"; fi
fi
