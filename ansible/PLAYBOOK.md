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

---

`tags`

tasks 밑에 `tags: 이름` 이런 식으로 정의

```yml
tasks:
  
  - name:
    tags: always

  - name:
    tags: a,b

  - name:
    tags: b
```

`ansible-playbook --list-tags playbook.yml` playbook.yml에 있는 tags 보기

`ansible-playbook --tags a playbook.yml` playbook.yml에 a tag있는 task name만 실행

---

`copy`

```yml
copy:
  src: 보낼파일이름
  dest: 저장할위치
  owner: 소유자
  group: 소유자그룹
  mode: 권한
```

```yml
copy:
  src: default_site.html
  dest: /var/www/html/index.html
  owner: root
  group: root
  mode: 0644
```