DOCKER_USER := prakasa1904

include basic/Makefile

# ================ INFO ================
# Setter Function
# Author: Prakasa <prakasa@devetek.com>
# Description; use this func to set some requirement inside the kube from basic configuration
# ================ INFO ================
.PHONY: set-cluster
set-cluster:
	@kubectl config --kubeconfig=config/development set-cluster development --server=https://1.2.3.4 --certificate-authority=fake-ca-file
	@kubectl config --kubeconfig=config/development set-cluster scratch --server=https://5.6.7.8 --insecure-skip-tls-verify

.PHONY: set-credential
set-credential:
	@kubectl config --kubeconfig=config/development set-credentials developer --client-certificate=fake-cert-file --client-key=fake-key-seefile
	@kubectl config --kubeconfig=config/development set-credentials experimenter --username=exp --password=password

.PHONY: set-context
set-context:
	@kubectl config --kubeconfig=config/development set-context dev-frontend --cluster=development --namespace=frontend --user=developer
	@kubectl config --kubeconfig=config/development set-context dev-storage --cluster=development --namespace=storage --user=developer
	@kubectl config --kubeconfig=config/development set-context exp-scratch --cluster=scratch --namespace=default --user=experimenter


# ================ INFO ================
# Getter Function
# Author: Prakasa <prakasa@devetek.com>
# Description; use this func to get some requirement inside the kube from basic configuration
# ================ INFO ================
.PHONY: get-config
get-config:
	@kubectl config --kubeconfig=config/development view
