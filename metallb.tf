resource "helm_release" "metallb" {
  name       = var.name
  repository = "https://metallb.github.io/metallb"
  chart      = "metallb"
  version    = var.version
  namespace  = var.namespace

  depends_on = [
    kubernetes_namespace.metallb,
  ]
}
