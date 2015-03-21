make: build push

build:
	docker build -t zopyx/existdb-2.2 .

build-clean:
	docker build --no-cache=true -t zopyx/existdb-2.2 .

push:
	docker push zopyx/existdb-2.2
