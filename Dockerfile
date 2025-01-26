FROM python:3.12-slim

COPY requirements.lock /
RUN python -m venv /.venv && /.venv/bin/pip install -r /requirements.lock && mkdir /myapp
WORKDIR /myapp
ADD pyproject.toml ./
COPY src ./src
RUN /.venv/bin/pip install -e /myapp

CMD ["/.venv/bin/myapp"]
