build:
	docker build -t zopyx/existdb-36 .

build-clean:
	docker build --no-cache=true -t zopyx/existdb-36 .

push:
	docker push zopyx/existdb-36

run: 
	docker run zopyx/existdb-36
