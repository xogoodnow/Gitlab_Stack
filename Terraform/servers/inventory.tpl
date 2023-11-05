all:
    children:
        helsinki:
            hosts:
            %{ for index, ip in gitlab_ips }
                gitlab-hel-${index}:
                    ansible_host: ${ip}
                    ansible_user: root
                    mode: 'gitlab_server'
            %{ endfor }

            %{ for index, ip in runner_ips }
                runner-hel-${index}:
                    ansible_host: ${ip}
                    ansible_user: root
                    mode: 'runner_server'
            %{ endfor }

            %{ for index, ip in monitoring_ips }
                monitoring-hel-${index}:
                    ansible_host: ${ip}
                    ansible_user: root
                    mode: 'monitoring'
            %{ endfor }