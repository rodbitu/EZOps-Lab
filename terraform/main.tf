provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "my_app" {
  metadata {
    name = "my-app-deployment"
    labels = {
      app = "my-app"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "my-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "my-app"
        }
      }

      spec {
        container {
          name  = "my-app"
          image = "docker.io/rodbitu/my-app:latest"
          port {
            container_port = 5000
          }
        }
      }
    }
  }
}
