# resource "aws_instance" "web" {
#   for_each      = toset(var.myinfo)
#   ami           = var.myami
#   instance_type = each.key

#   tags = {
#     Name = "MY-Pandey"
#   }
# }


 resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr
    instance_tenancy = var.tenancy

    tags = {
      Name = var.tag_name
    }

}

# output "ips" {
#   value = aws_instance.web[*].public_ip
# }