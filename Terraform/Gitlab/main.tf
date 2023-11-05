
resource "null_resource" "Gitlab" {
  provisioner "local-exec" {
    command = "sleep 50  && PWD='../' ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yaml ../Ansible/playbooks/Setup.yaml --private-key sshkey/private_key.pem"
  }
}

