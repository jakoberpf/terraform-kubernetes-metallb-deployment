resource "kubernetes_namespace" "metallb" {
  metadata {
    annotations = {
      name = var.namespace
    }

    labels = {
      managed-by                           = var.compartment
      "pod-security.kubernetes.io/audit"   = "privileged"
      "pod-security.kubernetes.io/enforce" = "privileged"
      "pod-security.kubernetes.io/warn"    = "privileged"
    }

    name = var.namespace
  }
}
