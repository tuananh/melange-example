dev-container:
	docker run --privileged --rm -it -v "${PWD}:${PWD}" -w "${PWD}" cgr.dev/chainguard/sdk