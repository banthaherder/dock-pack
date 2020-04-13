up:
	mkdir -p /tmp/test_html
	cp index.html /tmp/test_html
up-ubuntu: up
	docker run --name ubuntu_nginx -v /tmp/test_html:/html -p 8888:80 -d banthaherder/nginx-ubuntu:latest

up-centos: up
	docker run --name centos_nginx -v /tmp/test_html:/html -p 8888:80 -d banthaherder/nginx-centos:latest

build-ubuntu:
	packer build -var 'base_os=ubuntu' packer.json

build-centos:
	packer build -var 'base_os=centos' packer.json

down-ubuntu:
	docker stop ubuntu_nginx

down-centos:
	docker stop centos_nginx 