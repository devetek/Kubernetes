## Dasar-Dasar Kubernetes

Kubernetes adalah salah satu dari sekian banyak modern arsitektur yang sangat populer. Dengan keunggulan mengcover berbagai masalah dalam dunia arsitektur aplikasi. Fitur yang terdapat dalam kubernetes pun juga dapat ditambahkan sesuai dengan kebutuhan masing-masing arsitektur. Sifatnya yang fleksible dan memanusiakan manusia `arsitek` membuatnya menjadi primadona, dan pasti di masa depan akan menghapuskan semua arsitektur lama.

### Kind

Di dalam repository ini kita tidak akan membahas terlalu dalam tentang kubernetes. Kita hanya akan belajar dasar-dasar kubernetes untuk membuat aplikasi berjalan di kubernetes. Sesungguhnya ada begitu banyak `Kind` atau jenins feature yang dapat kita manfaatkan untuk membuat arsitektur aplikasi kita sesuai kebutuhan. Namun jenis-jenis berikut ini merupakan dasar yang cukup untuk membuat aplikasi kita berjalan di minimal lokal kubernetes.

- Cluster
- Context
- Namespace
- Deployment
- Services
- Pod

#### Deployment dan Services

Di tutorial ini kita akan memastikan aplikasi kita berhasil berjalan di kubernetes, [selengkapnya](https://github.com/devetek/Kubernetes/blob/master/basic/README.md).

### References

- [Configure Multiple Cluster](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)
- [Kube Engine Hello App](https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app)
- [GCP Zone](https://cloud.google.com/compute/docs/regions-zones#available)
- [Istio Dummies](https://istio.io/docs/setup/getting-started/#download)
- [expose Grafana Istio](https://istio.io/docs/tasks/observability/metrics/using-istio-dashboard/)
- [Credential Kubernetes Server](https://kubernetes.io/docs/concepts/cluster-administration/certificates/)
- [Kubeadm Certificate](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-certs/)
- [Kubernetes Create Cert](https://medium.com/better-programming/k8s-tips-give-access-to-your-clusterwith-a-client-certificate-dfb3b71a76fe)
- [How To Expose](https://medium.com/google-cloud/kubernetes-nodeport-vs-loadbalancer-vs-ingress-when-should-i-use-what-922f010849e0)
- [Ingress Kube](https://kubernetes.io/id/docs/concepts/services-networking/ingress/)
- [Ingress Kube Bare Metal](https://medium.com/swlh/using-nginx-ingress-controllers-on-kubernetes-on-centos-7-99f6df969b45)
- [After Follow Ingress Kube Bare Metal](https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-manifests/)
- [Bare Metal Strategy](https://kubernetes.github.io/ingress-nginx/deploy/baremetal/#over-a-nodeport-service)
- [Create Image Inside Kube](https://github.com/GoogleContainerTools/kaniko)
