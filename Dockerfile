FROM gcr.io/google_containers/kube-apiserver-arm64:v1.18.2
FROM gcr.io/google_containers/kube-controller-manager-arm64:v1.18.2
FROM gcr.io/google_containers/kube-scheduler-arm64:v1.18.2
FROM gcr.io/google_containers/kube-proxy-arm64:v1.18.2
FROM gcr.io/google_containers/pause-arm64:3.2
FROM gcr.io/google_containers/etcd-arm64:3.4.3-0
FROM gcr.io/google_containers/coredns-arm64:1.6.7
