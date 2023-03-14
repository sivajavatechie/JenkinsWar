syntax:

output "anyname" {
  value="${module-name.logical-name.attribute}"
} 



Note: module-name : aws_instance
      logical-name : web-server
       attribute : instance_state ( these attributes are predefined values )

--------------------------------------------------------------------
Example:

output "instance_state" {
  value = "${aws_instance.web-server.instance_state}"
}
output "private-ip" {
  value = "${aws_instance.web-server.private_ip}"
}
output "server-pulic_IP" {
  value = "${aws_instance.web-server.public_ip}"
}
output "server-arn" {
  value = "${aws_instance.web-server.arn}"
}
output "server-dns" {
  value = "${aws_instance.web-server.public_dns}"
}
