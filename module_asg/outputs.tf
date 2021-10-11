output public_key {
    description = "Public key for connection to EC2 instances"
    value = tls_private_key.this.public_key_openssh
}