output "bastion-host" {
  value = yandex_compute_instance.bastion-host.network_interface.0.nat_ip_address
}
output "kibana" {
  value = yandex_compute_instance.kibana.network_interface.0.nat_ip_address
}
output "zabbix" {
  value = yandex_compute_instance.zabbix.network_interface.0.nat_ip_address
}


resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/../ansible/hosts.yml", {
    bastion_public_ip = yandex_compute_instance.bastion-host.network_interface.0.nat_ip_address
    zabbix_public_ip  = yandex_compute_instance.zabbix.network_interface.0.nat_ip_address
    kibana_public_ip  = yandex_compute_instance.kibana.network_interface.0.nat_ip_address
  })
  filename = "${path.module}/../ansible/hosts.yml"
}