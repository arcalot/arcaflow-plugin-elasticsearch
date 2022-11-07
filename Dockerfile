FROM quay.io/centos/centos:stream8 as arcaflow-elasticsearch-plugin

RUN dnf -y module install python39 && dnf -y install python39 python39-pip git
RUN mkdir /app
RUN chmod 777 /app
ADD https://raw.githubusercontent.com/arcalot/arcaflow-plugin-template-python/main/LICENSE /app/
ADD README.md /app/
ADD poetry.lock /app/
ADD pyproject.toml /app/
ADD es_plugin.py /app/
ADD tests/unit/test_es_plugin.py /app/
ADD es_schema.py /app/
RUN chmod +x /app/es_plugin.py /app/test_es_plugin.py
WORKDIR /app

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --without dev
RUN /app/test_es_plugin.py

# Test stage
FROM arcaflow-elasticsearch-plugin as test

COPY tests/unit/test_es_plugin.py /app

RUN pip3 install coverage
RUN python3 -m coverage run test_es_plugin.py

RUN mkdir /htmlcov
RUN python3 -m coverage html -d /htmlcov

FROM arcaflow-elasticsearch-plugin
ENTRYPOINT ["python3", "/app/es_plugin.py"]
CMD []

LABEL org.opencontainers.image.source="https://github.com/arcalot/arcaflow-plugin-elasticsearch"
LABEL org.opencontainers.image.licenses="Apache-2.0"
LABEL org.opencontainers.image.vendor="Arcalot project"
LABEL org.opencontainers.image.authors="Arcalot contributors"
LABEL org.opencontainers.image.title="Python Elasticsearch Plugin"
LABEL io.github.arcalot.arcaflow.plugin.version="1"