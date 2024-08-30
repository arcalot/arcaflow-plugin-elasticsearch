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

# Autogenerated Input/Output Documentation by Arcaflow-Docsgen Below

<!-- Autogenerated documentation by arcaflow-docsgen -->
## Elasticsearch (`elasticsearch`)

Load data into elasticsearch instance

### Input

<table><tbody>
<tr><th>Type:</th><td><code>scope</code></td><tr><th>Root object:</th><td>StoreDocumentRequest</td></tr>
<tr><th>Properties</th><td><details><summary>data (<code>map[<code>string</code>,<code>any</code>]</code>)</summary>
                <table><tbody><tr><th>Name:</th><td>data</td></tr><tr><th>Description:</th><td width="500">Data to upload to your Elasticsearch index.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>map[<code>string</code>,<code>any</code>]</code></td><tr><td colspan="2">
    <details>
        <summary>Key type</summary>
        <table><tbody><tr><th>Type:</th><td><code>string</code></td></tbody></table>
    </details>
</td></tr>
<tr><td colspan="2">
    <details>
        <summary>Value type</summary>
        <table><tbody><tr><th>Type:</th><td><code>any</code></td></tbody></table>
    </details>
</td></tr>
</tbody></table>
            </details><details><summary>index (<code>string</code>)</summary>
                <table><tbody><tr><th>Name:</th><td>index</td></tr><tr><th>Description:</th><td width="500">Name of the Elasticsearch index that will receive the data. </td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td><tr><th>Minimum length:</th><td>1</td></tr></tbody></table>
            </details><details><summary>password (<code>string</code>)</summary>
                <table><tbody><tr><th>Name:</th><td>password</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing the password for the given user.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
            </details><details><summary>url (<code>string</code>)</summary>
                <table><tbody><tr><th>Name:</th><td>url</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing the URL for the Elasticsearch instance.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
            </details><details><summary>username (<code>string</code>)</summary>
                <table><tbody><tr><th>Name:</th><td>username</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing an authorized user for the given Elasticsearch instance.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td><tr><th>Minimum length:</th><td>1</td></tr></tbody></table>
            </details></td></tr>
<tr><td colspan="2"><details><summary><strong>Objects</strong></summary><details><summary>StoreDocumentRequest (<code>object</code>)</summary>
            <table><tbody><tr><th>Type:</th><td><code>object</code></td><tr><th>Properties</th><td><details><summary>data (<code>map[<code>string</code>,<code>any</code>]</code>)</summary>
        <table><tbody><tr><th>Name:</th><td>data</td></tr><tr><th>Description:</th><td width="500">Data to upload to your Elasticsearch index.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>map[<code>string</code>,<code>any</code>]</code></td><tr><td colspan="2">
    <details>
        <summary>Key type</summary>
        <table><tbody><tr><th>Type:</th><td><code>string</code></td></tbody></table>
    </details>
</td></tr>
<tr><td colspan="2">
    <details>
        <summary>Value type</summary>
        <table><tbody><tr><th>Type:</th><td><code>any</code></td></tbody></table>
    </details>
</td></tr>
</tbody></table>
        </details><details><summary>index (<code>string</code>)</summary>
        <table><tbody><tr><th>Name:</th><td>index</td></tr><tr><th>Description:</th><td width="500">Name of the Elasticsearch index that will receive the data. </td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td><tr><th>Minimum length:</th><td>1</td></tr></tbody></table>
        </details><details><summary>password (<code>string</code>)</summary>
        <table><tbody><tr><th>Name:</th><td>password</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing the password for the given user.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
        </details><details><summary>url (<code>string</code>)</summary>
        <table><tbody><tr><th>Name:</th><td>url</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing the URL for the Elasticsearch instance.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
        </details><details><summary>username (<code>string</code>)</summary>
        <table><tbody><tr><th>Name:</th><td>username</td></tr><tr><th>Description:</th><td width="500">Name of the environment variable containing an authorized user for the given Elasticsearch instance.</td></tr><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td><tr><th>Minimum length:</th><td>1</td></tr></tbody></table>
        </details></td></tr>
</tbody></table>
        </details></details></td></tr>
</tbody></table>

### Outputs


#### error

<table><tbody>
<tr><th>Type:</th><td><code>scope</code></td><tr><th>Root object:</th><td>ErrorOutput</td></tr>
<tr><th>Properties</th><td><details><summary>error (<code>string</code>)</summary>
                <table><tbody><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
            </details></td></tr>
<tr><td colspan="2"><details><summary><strong>Objects</strong></summary><details><summary>ErrorOutput (<code>object</code>)</summary>
            <table><tbody><tr><th>Type:</th><td><code>object</code></td><tr><th>Properties</th><td><details><summary>error (<code>string</code>)</summary>
        <table><tbody><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
        </details></td></tr>
</tbody></table>
        </details></details></td></tr>
</tbody></table>

#### success

<table><tbody>
<tr><th>Type:</th><td><code>scope</code></td><tr><th>Root object:</th><td>SuccessOutput</td></tr>
<tr><th>Properties</th><td><details><summary>message (<code>string</code>)</summary>
                <table><tbody><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
            </details></td></tr>
<tr><td colspan="2"><details><summary><strong>Objects</strong></summary><details><summary>SuccessOutput (<code>object</code>)</summary>
            <table><tbody><tr><th>Type:</th><td><code>object</code></td><tr><th>Properties</th><td><details><summary>message (<code>string</code>)</summary>
        <table><tbody><tr><th>Required:</th><td>Yes</td></tr><tr><th>Type:</th><td><code>string</code></td></tbody></table>
        </details></td></tr>
</tbody></table>
        </details></details></td></tr>
</tbody></table>
<!-- End of autogenerated documentation -->
