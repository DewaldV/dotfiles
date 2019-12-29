ks() {
  kubectl $@ --namespace=kube-system
}

kn() {
  kubectl $@ --namespace=${KUBE_NS:-default}
}

knr() {
  kubectl $@ --namespace=${KUBE_NS:-default} --context red.kube.usw.co
}

knbu() {
  kubectl $@ --namespace=${KUBE_NS:-default} --context blue.kube.usw.co
}

knbk() {
  kubectl $@ --namespace=${KUBE_NS:-default} --context black.kube.usw.co
}

kns() {
  export KUBE_NS=$@
}

kc() {
  if [ -z "${1}" ]; then
    echo "Current context: $(kubectl config current-context)"
    echo "Available Contexts:"
    kubectl config get-contexts -o name
  else
    kubectl config use-context ${1}
  fi
}

mysql_db() {
  kubectl run mysql --rm -ti --generator=run-pod/v1 --image=mysql:5.6 --command -- bash
}
