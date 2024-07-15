FROM python:3.12.4-slim as development

WORKDIR /app

RUN apt update && \
    apt -y upgrade
RUN apt install -y git

RUN pip install poetry==1.8.3 && \
    poetry config virtualenvs.in-project true

FROM development as builder

WORKDIR /app

COPY . .
RUN poetry config virtualenvs.create false && \
    poetry install --only main && \
    poetry build -f wheel && \
    pip install --no-cache-dir ./dist/*.whl --target=/tmp/.builder/packages && \
    mv /tmp/.builder/packages/bin /tmp/.builder/bin

FROM python:3.12.4-slim as production

WORKDIR /app

COPY --from=builder /tmp/.builder/packages /usr/local/lib/python3.12/site-packages
COPY --from=builder /tmp/.builder/bin /usr/local/bin

ENTRYPOINT ["pycli"]

