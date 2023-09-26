build:
	docker build -t eznvim:latest .

bash:
	docker run \
		-v ./nvim/:/root/.config/nvim/ \
		-it \
		eznvim \
		/bin/bash

run:
	docker run -it eznvim
