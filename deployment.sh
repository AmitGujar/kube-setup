# switch back to master node

kubectl apply -f deployment.yaml

echo "\nGetting more info on deployment.yaml"

kubectl describe deployment nginx-deployment

echo "\nListing the number of pods created by this deployment.\n"

kubectl get pods -l app=nginx

echo "\nk3s setup is successful."
