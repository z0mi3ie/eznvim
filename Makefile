build:
	docker build -t eznvim:latest .

bash:
	docker run -it eznvim /bin/bash

run:
	docker run -it eznvim
