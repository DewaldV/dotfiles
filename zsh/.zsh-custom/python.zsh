## Deps: zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel
PYENV_HOME="${HOME}/.pyenv"

if [ -d "${PYENV_HOME}" ]; then
  if which pyenv &> /dev/null; then eval "$(pyenv init -)"; fi
fi
