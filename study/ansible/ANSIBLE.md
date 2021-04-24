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

### Command

`ansible all -m gather_facts --limit <IP> | grep ansible_distribution`

os 관련 정보 

```
"ansible_distribution": "CentOS",
"ansible_distribution_file_parsed": true,
"ansible_distribution_file_path": "/etc/redhat-release",
"ansible_distribution_file_variety": "RedHat",
"ansible_distribution_major_version": "7",
"ansible_distribution_release": "Core",
"ansible_distribution_version": "7.8",
```