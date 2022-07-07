#!/bin/bash
dnf install -y git
/usr/bin/python3 -m venv /usr/lib/virtualenvs/ansible --system-site-packages

/usr/lib/virtualenvs/ansible/bin/pip install --upgrade pip
/usr/lib/virtualenvs/ansible/bin/pip install 'ansible<6'

mkdir -p /etc/ansible
cat <<EOF > /etc/ansible/hosts
[local]
127.0.0.1 ansible_python_interpreter=/usr/lib/virtualenvs/ansible/bin/python
EOF
