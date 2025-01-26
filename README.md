## Demo of python src-layout with Docker

1. To generate lock file (you need `pip-tools` installed):
```shell
pip-compile --output-file=requirements.lock --generate-hashes --index-url=https://pypi.org/simple pyproject.toml
```

2. To build container:
```shell
docker build -t myapp .
```

3. To run:
```shell
docker run --rm -it myapp
```
