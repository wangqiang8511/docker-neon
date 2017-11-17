LOCAL_REPO=wangqiang8511/neon
VERSION?=cuda9-latest

build:
	docker build -t $(LOCAL_REPO):$(VERSION) .

push: build
	docker push $(LOCAL_REPO):$(VERSION)
