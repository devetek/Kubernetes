# ================ HEADER ================
# Reference: https://cloud.google.com/kubernetes-engine/docs/quickstart?hl=id
# ================ HEADER ================
include basic/app/Makefile

# Get Basic Kubernetes
get-contexts:
	@kubectl config get-contexts

get-namespaces:
	@kubectl get namespaces

get-services:
	@kubectl get services --all-namespaces

get-deployments:
	@kubectl get deployments --all-namespaces

get-pods:
	@kubectl get pods --all-namespaces


apply-deployment:
	@kubectl apply -f basic/deployments/app-deployment.yaml

apply-service:
	@kubectl apply -f basic/services/app-service.yaml

