FROM python:3.11-alpine
RUN pip install --no-cache-dir mkdocs mkdocs-material
RUN pip install mkdocs-exclude
RUN apk update && \
    apk add --no-cache nodejs npm && \
    rm -rf /var/cache/apk/*
EXPOSE 8000
WORKDIR /
COPY ./mkdocs.yml /
CMD ["mkdocs", "serve"]
