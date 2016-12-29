BASE_BOX ?=	vagrant-win7-ie11
BASE_BOX_URL ?=	http://aka.ms/vagrant-win7-ie11

all: run

.PHONY: run
run:	$(BASE_BOX)
	vagrant up --provider virtualbox


$(BASE_BOX):
	mkdir -p .tmp && cd .tmp && wget -c $(BASE_BOX_URL) && mv $(BASE_BOX_URL) ..
