# Terraform-modules
Modulos que voy creando para terraform

> ec2-with-eip 

	* Crea una Instancia - ubuntu desde un Data-source (Puedes modificar los datos de la instancia a crear)
	* Crea una Elastic IP asociada a la instancia
	* Crea una keypar asociada a la instancia, para autentificarse con ella por SSH
	* Crea un grupo de seguridad asociado a la instancia con todos los puertos abiertos. 

> keypair 

	* Modulo que se llama desde el modulo ec2-with-eip para no contener la key SSH-RSA
