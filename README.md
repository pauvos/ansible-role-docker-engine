# Ansible Role: docker-engine [![Build Status](https://travis-ci.org/pauvos/ansible-role-docker-engine.svg?branch=master)](https://travis-ci.org/pauvos/ansible-role-docker-engine)

Installs *docker-ce* with official packages from [download.docker.com](https://download.docker.com/).

Tested with:

* CentOS 7
* Debian 8
* Fedora 24
* Ubuntu 16.04

## Install

```bash
ansible-galaxy install pauvos.docker_engine
```

## Example Playbook

```yaml
- hosts: docker-hosts
  become: true
  roles:
    - { role: pauvos.docker_engine }
```

## Role Variables

Available variables are listed below, along with default values:

```yaml
docker_engine_cache_valid_time: 84600   # cache_valid_time for apt
docker_engine_daemon_conf: (unset)      # docker daemon options
```

### docker_engine_daemon_conf

Use custom daemon options (also restarts the docker daemon):

```yaml
docker_engine_daemon_conf:
  registry-mirrors:
    - https://my-registry.domain.net
  userns-remap: default
```

Ensure `/etc/docker/daemon.json` is empty:

```yaml
docker_engine_daemon_conf: {}
```

To force removal of `/etc/docker/daemon.json` use one of the following:

```yaml
docker_engine_daemon_conf:
docker_engine_daemon_conf: null
```

Note: This role manages docker daemon options since v1.2. In order to prevent accidental daemon restarts during updates it does not do anything as long as `docker_engine_daemon_conf` is undefined.