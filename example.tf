variable "aws_access_key" {
    description = "The AWS access key to use."
}
variable "aws_secret_key" {
    description = "The AWS secret key to use."
}
variable "do_token" {
    description = "The digital ocean API token to use."
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "ap-southeast-2"
}
provider "digitalocean" {
    token = "${var.do_token}"
}

resource "aws_instance" "pkh-example" {
    ami = "ami-fb3751c1"
    instance_type = "t2.micro"
    key_name = "phall"
}
resource "digitalocean_droplet" "myfirst" {
    image = "ubuntu-14-04-x64"
    name = "myfirst-1"
    region = "sgp1"
    size = "512mb"

}
