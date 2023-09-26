# root access required

echo "\nGetting Updates.\n"

apt-get update -y

echo "\nInstalling K3S"

curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -s -

echo "\nVertifying Installation.\n"

kubectl get nodes

echo "\nCluster is ready.\n"

cat /var/lib/rancher/k3s/server/node-token


echo "\nCopy this token.\n"

echo "\nRun worker.sh"