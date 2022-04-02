FROM docker.io/python:3.10.2-buster as base

USER root

ENV TZ=Europe/Berlin
ENV POETRY_VERSION=1.1.13 \
    POETRY_VIRTUALENVS_IN_PROJECT=true \
    POETRY_HOME="/opt/poetry" \
    PYSETUP_PATH="/app"

RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="${POETRY_HOME}/bin:${PYSETUP_PATH}/bin:$PATH"

WORKDIR /app

COPY ./poetry.lock ./pyproject.toml /app/
COPY ./src /app/src

RUN poetry install --no-dev 

CMD [ "poetry","run","serve" ]
