# switch back to master node

kubectl apply -f deployment.yaml

echo "\nGetting more info on deployment.yaml"

kubectl describe deployment demopods-deployment

echo "\nListing the number of pods created by this deployment.\n"

kubectl get pods -o wide

echo "\nExposing deployment.\n"

kubectl expose deployment demopods-deployment --type=NodePort --name=expose-service

echo "\nk3s setup is successful."
