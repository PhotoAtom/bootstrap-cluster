// MinIO Operator Configuration
resource "helm_release" "minio" {
  name      = "minio-operator"
  namespace = "minio-operator"

  repository       = "https://operator.min.io"
  chart            = "operator"
  version          = "6.0.2"
  create_namespace = true

}

// Cert Manager Operator Configuration
resource "helm_release" "cert-manager" {
  name      = "cert-manager"
  namespace = "cert-manager"

  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  version          = "v1.16.1"
  create_namespace = true

  set {
    name  = "crds.enabled"
    value = true
  }

}