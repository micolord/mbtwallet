region  = "ap-southeast-1"
project = "mbtwallet"
env_name = "uat"

// network details
vpc_cidr = "10.1.0.0/16"
priv_d = "10.1.0.0/24"
priv_a = "10.1.2.0/24"
priv_b = "10.1.3.0/24"
priv_c = "10.1.4.0/24"
az_a = "ap-southeast-1a"
az_b = "ap-southeast-1b"

// domains
gl_fe_domain = "encoregames.live"
gl_be_domain = "gl-be.encoregames.live"
bo_fe_domain = "bo-fe.encoregames.live"
bo_be_domain = "bo-be.encoregames.live"
jobproc_domain = "jobproc.encoregames.live"
#socket_domain  = "socket.mbtwallet-uat.vip"
cert_id = "102904-ap-southeast-1"

// Back Office
#bo_fe_ami_id = "aliyun_3_x64_20G_qboot_alibase_20230727.vhd"
#bo_fe_instance_type = "ecs.t6-c4m1.large"

// db instance details
#master_instance_class = "db.t3.small"