#BASE_BOX ?=	vagrant-win7-ie11
#xBASE_BOX ?=	vagrant-win81-ie11
BASE_BOX ?=	vagrant-xp-ie8
BASE_BOX_URL ?=	http://aka.ms/$(BASE_BOX)

all: run

.PHONY: run
run:	$(BASE_BOX)
	vagrant up --provider virtualbox


$(BASE_BOX):
	mkdir -p .tmp && cd .tmp && wget -c $(BASE_BOX_URL) && mv $(BASE_BOX_URL) ..
