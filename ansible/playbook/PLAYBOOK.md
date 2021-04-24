# Playbook

`when` : 조건에 해당하는 host만 실행

`when: ansible_distribution in ["Debian", "Ubuntu"]` 데비안, 우분투만 실행

---

`"{{ 이름 }}"` 변수

`"{{ apache_package }}"`

playbook에 변수 설정

```
<IP주소> apache_package=<값>
```

---

* `yum` => centos7 
* `dnf` => centos8
* `apt` => ubuntu'
* `pacakge` => 공통