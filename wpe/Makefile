DATE :=$(shell date '+%d%m%Y')
ISTIO_VERSION :=1.4.6

build-mage:
	@docker build -t prakasa1904/wpe-lite:$(DATE) .
	@docker build -t prakasa1904/wpe-lite:latest .
	@docker push prakasa1904/wpe-lite:$(DATE)
	@docker push prakasa1904/wpe-lite:latest

genereate-istio-template:
	@helm repo add istio.io https://storage.googleapis.com/istio-release/releases/$(ISTIO_VERSION)/charts/
	@helm template istio-$(ISTIO_VERSION)/install/kubernetes/helm/istio --name istio --namespace istio-system --set global.mtls.enabled=true --set tracing.enabled=true --set servicegraph.enabled=true --set grafana.enabled=true > istio.yaml

deploy-istio:
	@kubectl create namespace istio-system
	@kubectl apply -f istio.yaml
	@kubectl label namespace default istio-injection=enabled --overwrite
	@sleep 60
	@kubectl delete pod -n istio-system -l app=prometheus

apply-services:
	@kubectl apply -f service/minio.yaml
	@kubectl apply -f service/mongo.yaml
	@kubectl apply -f service/lite.yaml

apply-deployments:
	@kubectl apply -f deployments/minio.yaml
	@kubectl apply -f deployments/mongo.yaml
	@kubectl apply -f deployments/lite.yaml

delete-all:
	# https://kubernetes.io/id/docs/concepts/services-networking/service/ 
	@kubectl delete svc --all
	# https://kubernetes.io/id/docs/concepts/storage/persistent-volumes/
	@kubectl delete pvc --all
	@kubectl delete deployment --all