output "PublicIp" {
  value = "${aws_instance.one.public_ip}"
}

output "PrivateIp" {
  value = "${aws_instance.one.private_ip}"
}


output "Publicip_for_two" {
  value = "${aws_instance.two.public_ip}"
}

output "Public_ip_for_two" {
  value = "${aws_instance.two.private_ip}"
}