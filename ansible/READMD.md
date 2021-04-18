# Ansible

## Install

```bash
# CentOS
yum install -y epel-release

yum install -y ansible
```

# Config

`/etc/ansible/hosts` 파일에 그룹 생성 & Client IP 입력

### Inventory

명령 수행할 대상

`-i <path>` 