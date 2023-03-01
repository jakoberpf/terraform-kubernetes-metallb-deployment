resource "kubernetes_namespace" "metallb" {
  metadata {
    annotations = {
      name = var.namespace
    }

    labels = {
      managed-by = var.compartment
    }

    name = var.namespace
  }
}
