all: before_install test

before_install:
	docker pull chmuul/ansible:${OS}

test:
	docker run -t --rm -w /site -v ${PWD}:/site chmuul/ansible:${OS} ansible-playbook -i tests/inventory tests/main.yml
