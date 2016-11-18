
jumpbox() {
  JUMP_BOX=${1}
  USER=${2}
  DOMAIN=${3}

  rdesktop ${JUMP_BOX} -g 1600x900 -u ${USER} -d ${DOMAIN} -p -
}
