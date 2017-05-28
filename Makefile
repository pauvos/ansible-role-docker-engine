test:
	docker pull chmuul/ansible:${OS}
	docker run -t --rm -w /site -v ${PWD}:/site chmuul/ansible:${OS} ansible-playbook -i tests/inventory tests/main.yml --syntax-check
	docker run -t --rm -w /site -v ${PWD}:/site chmuul/ansible:${OS} ansible-playbook -i tests/inventory tests/main.yml
