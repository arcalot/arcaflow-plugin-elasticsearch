# Arcaflow Elasticsearch

A plugin for loading data into an Elasticsearch instance.

## Development

During the development of this plugin it is useful to start a local Elasticsearch via:
```bash
docker-compose -f docker-compose-dev.yml up -d
```

and stop it again via:
```bash
docker-compose -f docker-compose-dev.yml down -v
```

## Testing

The tests of this plugin are split up into `unit` and `integration` tests located in 
- [./tests/integration/](./tests/integration/)
- [./tests/unit/](./tests/unit/)

### Unit Tests

Run all unit tests via:
```bash
# Run all unit tests
python -m unittest tests.unit.test_es_plugin
```

### Integration Tests

Running all integration tests can be run either 
- using a running a local Elasticsearch as described in [Development](#development) and then execute the tests via
```bash
# Run all integration tests
python -m unittest tests.integration.test_es_plugin
```

- using the [docker-compose-integration.yml](./docker-compose-integration.yml) and run
```bash
# the --abort-on-container-exit ensures a docker-compose down after the tests have run
docker-compose -f docker-compose-integration.yml up --abort-on-container-exit
```

__Note:__ Make sure to `docker-compose down` and remove the volume after one run as there is currently no cleanup done. 
