.PHONY: run
run:
	vagrant up --provider virtualbox


.PHONY: init
init:
	vagrant init ubuntu/xenial64
