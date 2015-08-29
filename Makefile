make: build push

build:
	docker build -t zopyx/existdb-3.0 .

build-clean:
	docker build --no-cache=true -t zopyx/existdb-3.0 .

push:
	docker push zopyx/existdb-3.0
