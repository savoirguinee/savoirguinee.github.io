FROM python:3.9.16-alpine

LABEL maintainer="Diallo Boubacar"

WORKDIR /app
RUN pip install mkdocs
COPY . /app/
RUN mkdocs build
WORKDIR /app/site

EXPOSE 8000
CMD python -m http.server 8000