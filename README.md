# Metabase Playbook

Ansible playbook for setup metabase.

# Feature

- Metabase 0.30.4
- Store Metabase data to MySQL
- Daemonize Metabase using Systemd
- Use Ubuntu 18.04 as base image

# Setup

## Step 1

Launch Ubuntu 16.04 server on AWS EC2 or something.

If you use AWS, open `3000` to the public in SecurityGroup setting.

## Step 2

Create a file `hosts` with the ip of the instance just launched.

e.g.)

```
[webservers]
YOUR_IP_ADDRESS
```

(see `hosts.example`)

Then run

```
ssh -i /path/to/your/key ubuntu@YOUR_IP_ADDRESS 'sudo sh -c "apt -y update && apt -y upgrade && apt -y install python"'
```

## Step 3

Run Ansible.

```
ansible-playbook \
  --private-key=/path/to/your/key \
  --extra-vars 'MB_DB_PASS="<YOUR PASSWORD>"' \
  playbooks/main.yml
```

Then open http://YOUR_IP_ADDRESS:3000 and play with metabase.
