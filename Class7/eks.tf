module "my-cluster" {
        source = "terraform-aws-modules/eks/aws"
        version = "12.0.0"
        cluster_name = var.cluster_name
        cluster_version = var.cluster_version
        subnets = var.subnets
        vpc_id = var.vpc_id
        cluster_create_security_group = true
        worker_groups = [{
        instance_type = var.instance_type
        asg_max_size = var.asg_max_size
        asg_min_size = var.asg_min_size #min size should be 1
                }
        ]
        tags = var.tags
}
