serve:
    poetry run serve 

build:
    podman build -f ./Dockerfile . -t fastapimini  

run:
    podman run -p 8080:8080 fastapimini