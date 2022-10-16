module "kadmos-k8s" {
    source = "../modules/gke/cluster"

    name = "kadmos-k8s"
    location = var.location

}

module "kadmos-k8s-nodepool" {
    source = "../modules/gke/nodepool"
    
    name = "kadmos-k8s-nodepool"
    location = var.location
    cluster_name = module.kadmos-k8s.name
    node_count = 1
}