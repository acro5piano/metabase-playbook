# metabase-playbook

Ansible playbook for setup metabase env

# Usage

setup aws EC2.

Then update `provision/hosts` with the ip `54.250.172.28` (just example)

Then

```
ssh ubuntu@54.250.172.28
sudo sh -c 'apt -y update && apt -y upgrade && apt -y install python'
```

Then

```
ansible-playbook --private-key=/path/to/your/key playbooks/main.yml
```

Then open http://54.250.172.28:3000 and play with metabase.
