# Tutorial of asniable, vagrant

* 一个nginx作为load balancer
* 两台web server，可作水平扩展

```
nginx -- webserver1
	     webserver2

```               



                       
## environment setup

### [optional] use vagrant to simulate if there's no servers

`vagrant up`

### configure the servers

```
ansible-playbook -i hosts.local bigcat-setup.yml --ask-sudo-pass
ansible-playbook -i hosts.local bigcat-deploy.yml --ask-sudo-pass
```