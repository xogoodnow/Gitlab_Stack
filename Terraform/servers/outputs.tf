output "gitlab_ips" {
  value = hcloud_server.gitlab[*].ipv4_address
}

output "runner_ips" {
  value = hcloud_server.runner[*].ipv4_address
}

output "monitoring_ips" {
  value = hcloud_server.monitoring[*].ipv4_address
}


