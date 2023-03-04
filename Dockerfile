FROM python:3.9

COPY . .

RUN curl -sSL https://install.python-poetry.org | python3 -
RUN $HOME/.local/bin/poetry config virtualenvs.create false
RUN $HOME/.local/bin/poetry install --no-dev

ENTRYPOINT uvicorn edu_helper.fastapi_server.main:app --host 0.0.0.0 --port 8000
