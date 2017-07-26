usage() {
  dir=${1:-.}

  du -ch --max-depth=1 ${dir} | sort -h
}

rdp() {
  box=${1}
  user=${2}
  domain=${3}

  xfreerdp /size:1600x900 /u:${user} /d:${domain} /v:${box} /clipboard
}

micloop() {
  state=${1}

  case "${1}z" in
    onz)
      pactl load-module module-loopback latency_msec=1
      ;;
    offz)
      pactl unload-module module-loopback
      ;;
    *)
      echo "Usage: micloop [on|off]"
      ;;
  esac
}
