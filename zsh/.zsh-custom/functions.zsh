usage() {
  dir=${1:-.}

  du -ch --max-depth=1 ${dir} | sort -h
}

jumpbox() {
  box=${1}
  user=${2}
  domain=${3}

  rdesktop ${box} -g 1600x900 -u ${user} -d ${domain} -p -
}
