make: build push

build:
	docker build -t zopyx/existdb-22 .

build-clean:
	docker build --no-cache=true -t zopyx/existdb-22 .

push:
	docker push zopyx/existdb-22
