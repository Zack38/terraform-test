resource "aws_internet_gateway" "gw" {
  vpc_id = module.vpc.vpc_id
}

# Recommended
# resource "aws_instance" "foo" {
#   # ... other arguments ...

#   depends_on = [aws_internet_gateway.gw]
# }