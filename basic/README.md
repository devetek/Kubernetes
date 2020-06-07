### Basic

Di dalam tutirial ini kita akan membuat aplikasi go untuk dapat berjalan di dalam kubernetes cluster. Sebelum memulai praktek, pastikan di lokal kamu sudah terinstall kubernetes engine, misalnya [Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/).

Dalam tutorial ini saya asumsikan kamu sudah berhasil melakukan pemasangan kubernetes di lokal. Selanjutnya ikuti langkah-langkah berikut ini untuk dapat membuat aplikasi go ini berjalan di kubernetes:

### Pastikan Context

Segala contoh yang ada di dalam repository ini memiliki context directory yang sama, yakni root repository. Jadi pastikan kamu berada di dalam root directory repository ini. Selanjutnya, di dalam contoh pertama ini, docker image yang akan kita gunakan sudah terbuat lebih dahulu sebelumnya. Jika kamu ingin membuat ulang docker image di dalam registry kamu, ikuti petunjuk yang ada di dalam folder `basic/app/READMED.md`.

Selanjutnya mari kita jalankan dua command di bawah ini untuk dapat menjalankan aplikasi di dalam kubernetes.

1. Apply Deployment

Deployment adalah state yang mengontrol perubahan pod dan replika. Di dalam contoh ini kita akan belajar tentang Deployment. Jalankan perintah berikut untuk melakukan apply deployment.

```sh
make apply-deployment
```

2. Apply Service

Service adalah sebuah abstraksi yang memberikan definisi set logis yang terdiri beberapa Pod serta policy bagaimana cara kamu mengakses sekumpulan Pod tadi - seringkali disebut sebagai microservices. Jalankan perintah berikut untuk melakukan apply service.

```sh
make apply-service
```

Setelah deployment dan service berhasil, kamu dapat melakukan pengecekan aplikasi kamu di dalam kubernetes dengan menjalankan perintah berikut ini:

```sh
make get-deployments
make get-services
make get-pods
```
