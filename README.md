# Metabase Playbook

Ansible playbook for setup metabase.

# Features

- Metabase 0.37.6
- Store Metabase data to PostgreSQL
- Daemonize Metabase using Systemd
- Use Ubuntu 20.04 as base image
- Runs on port 80 by defualt which is useful for proxying

# Setup

## Step 1

Launch Ubuntu 20.04 server on AWS EC2 or something.

If you use AWS, open port `80` to the public in SecurityGroup setting.

## Step 2

Run Ansible.

```
ansible-playbook \
    -i 11.22.333.444, \
    --private-key /path/to/private/key \
    playbooks/main.yml
```

Note that:

- Replace `11.22.333.444` with your instance's IP address.
    - `,` is needed after IP address. See [this](https://stackoverflow.com/questions/17188147/how-to-run-ansible-without-specifying-the-inventory-but-the-host-directly)
- Replace `/path/to/private/key` with your instance's private key.
- PostgreSQL's password is `postgres`. You must not expose port of `5432`.

## Step 3

Open http://YOUR_IP_ADDRESS and play with metabase.

# Go futher

You might create a proxy to http://YOUR_IP_ADDRESS such as Cloudflare or CloudFront. Use whatever you want.
