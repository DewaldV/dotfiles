ks() {
  kubectl $@ --namespace=kube-system
}

kn() {
  kubectl $@ --namespace=${KUBE_NS:-default}
}

knek1() {
  kubectl $@ --namespace=${KUBE_NS:-default} --context "eks-01"
}

knek2() {
  kubectl $@ --namespace=${KUBE_NS:-default} --context "eks-02"
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

kcdel() {
  local cluster_name=$(kubectl config get-clusters | grep ${1})
  local user_name=$(kubectl config get-clusters | grep ${1})
  kubectl config delete-cluster ${cluster_name}
  kubectl config delete-user ${user_name}
  kubectl config delete-context ${1}
}
