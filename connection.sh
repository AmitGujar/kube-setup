# worker node connection
# edit this line according to your token and ip
curl -sfL https://get.k3s.io | K3S_TOKEN="COPIED TOKEN" K3S_URL="https://[PUBLIC IP OF MASTERNODE]:6443" K3S_NODE_NAME="workernode" sh -

echo "\nRun \"kubectl get nodes\" on masternode to see if your worker is added.\n"

# switch back to master node

kubectl apply -f deployment.yaml

echo "\nGetting more info on deployment.yaml"

kubectl describe deployment nginx-deployment

echo "\nListing the number of pods created by this deployment.\n"

kubectl get pods -l app=nginx

echo "\nk3s setup is successful."
