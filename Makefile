.PHONY: build
build:
	docker build -t eznvim:latest .

.PHONY: bash
bash:
	docker run \
		-v ./nvim/:/root/.config/nvim/ \
		-it \
		eznvim \
		/bin/bash

.PHONY: run
run:
	docker run -it eznvim

.PHONY: install
install:
	./install.sh
