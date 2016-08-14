# Ansible Role: docker-engine [![Build Status](https://drone.chmuul.net/api/badges/chmuul.net/ansible-role-docker-engine/status.svg)](https://drone.chmuul.net/chmuul.net/ansible-role-docker-engine)

Installs docker-engine with official packages from [dockerproject.org](https://dockerproject.org/).

Works with with:

* debian-8
* ubuntu-16.04
* fedora-24 (other versions should work too)
* centos-7

## Get the role

Add role to your requirements.yml (not a galaxy role yet):

    - src: git+git@gogs.chmuul.net:chmuul.net/ansible-role-docker-engine.git
      version: master
      name: chmuulNet.docker-engine

Install role:

    ansible-galaxy install -r requirements.yml -p roles/


## Example Playbook

    ---
    - hosts: docker-hosts
      become: true
      roles:
        - { role: chmuulNet.docker-engine }

## Role Variables

Available variables are listed below, along with default values:

    docker_engine_cache_valid_time: 84600
