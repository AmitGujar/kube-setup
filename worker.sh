# worker node connection
# edit this line according to your token and ip
curl -sfL https://get.k3s.io | K3S_TOKEN="K1067d26c0c1f0138d90330901228a2feafcc36130c01bbc19a9790f2a792b32694::server:3a7ac9c70fda036a13d848d367b9f7d1" K3S_URL="https://192.168.154.133:6443" K3S_NODE_NAME="workernode" sh -

echo "\nRun \"kubectl get nodes\" on masternode to see if your worker is added.\n"