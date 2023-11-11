module "network" {
    source = "./network"
    cidr = var.cidr
    subnet-1-cidr = var.sub1-cidr
    subnet-2-cidr = var.sub2-cidr

  
}