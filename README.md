# Metabase Playbook

Ansible playbook for setup metabase.

# Feature

- Metabase 0.27.1
- Store Metabase data to MySQL
- Daemonize Metabase using Systemd
- Use Ubuntu 16.04 as base image

# Setup

## Step 1

Launch Ubuntu 16.04 server on AWS EC2 or something.

If you use AWS, open `3000` to the public in SecurityGroup setting.

## Step 2

Update `hosts` with the ip of the instance just launched.

e.g.) `54.250.172.28`

Then run

```
ssh -i /path/to/your/key ubuntu@54.250.172.28
sudo sh -c 'apt -y update && apt -y upgrade && apt -y install python'
```

## Step 3

Run Ansible.

```
ansible-playbook \
  --private-key=/path/to/your/key \
  --extra-vars MB_DB_PASS="secret" \
  playbooks/main.yml
```

Then open http://54.250.172.28:3000 and play with metabase.
