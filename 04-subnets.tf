# resource "aws_subnet" "public-subnet-1" {
#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "${var.main_vpc}-public-subnet-1"
#   }
# }

# resource "aws_subnet" "public-subnet-2" {
#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = "10.0.2.0/24"

#   tags = {
#     Name = "${var.main_vpc}-public-subnet-2"
#   }
# }