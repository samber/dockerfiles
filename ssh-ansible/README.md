
# SSH ansible Docker image

For testing ansible configs.

```
docker run --rm -it --privileged \
           -p 22:22 -p 80:80 \
           -e SSH_KEY="$(cat ~/.ssh/id_rsa.pub)" \
           --name ansible-test \
           samber/ssh-ansible
```

```
ssh root@localhost
```

or

```
echo "localhost ansible_ssh_extra_args='-o StrictHostKeyChecking=no' ansible_user=root" > /etc/ansible/hosts

ansible-playbook playbook.yml
```
