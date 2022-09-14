    output "sg_id" {
      value       = "${aws_security_group.sg.id}"
   
    }

    output "eip_ip" {
      value =  "${aws_eip.web_eip.public_ip}"
    }
    