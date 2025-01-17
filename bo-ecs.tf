data "alicloud_images" "ubuntu" {
  most_recent = true
  name_regex  = "^ubuntu_20.*64"
}

resource "alicloud_instance" "bo_ecs_instance_1" {
  instance_name        = "${var.env_name}-${var.project}-bo-fe"
  image_id             = "m-t4n8rkyats5sxqlop9c5"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.bo-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[1]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-bo-fe"
  }
}

resource "alicloud_instance" "bo_ecs_instance_2" {
  instance_name        = "${var.env_name}-${var.project}-bo-be"
  image_id             = "m-t4n8rkyats5sxqlop9c5"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.bo-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[1]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-bo-be"
  }
}