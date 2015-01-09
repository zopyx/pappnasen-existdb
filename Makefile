make: build push

build:
	docker build zopyx/existdb-2.2

push:
	docker push zopyx/existdb-2.2
