# tf-azure-cosmosdb
This repo spins up a CosmosDB on Azure. The shell script "cosmodb_create_document.sh" can be used to insert documents to the database.


## Install tools

* Azure CLI
* Terraform

## Login to Azure

Execute ```az login``` and follow the instructions in your browser or ```az login -h``` to see other ways to login.

## Clone this repo

```
mkaesz@arch ~/workspace> git clone git@github.com:hc-showcase/tf-azure-cosmosdb.git

mkaesz@arch ~/workspace> cd tf-azure-cosmosdb/

```

### Set your Subscription ID

In main.tf you have to specify the subscription ID you want to use.

### Execute Terraform

```
terraform init

terraform apply

```

### Create a document

The repository contains a shell script to create documents. The values of the db, collection, etc. are hard-coded in the script and align with the Terraform config.


```
mkaesz@arch ~/w/tf-azure-cosmosdb (master)> bash cosmosdb_create_document.sh
Masterkey: ejx8eEepqWGZwuC7TVpCEOMr0rgSsyD4Jmlj5diU9Od3M6QLAZmGXMpYKhIDWAfKiFxzZa4qEeJ9huziK7HU9A==
Date:  Thu, 15 Oct 2020 14:36:51 GMT
Signature: post\ndocs\ndbs/products/colls/clothes\nthu, 15 oct 2020 14:36:51 gmt\n\n
Hex key:  7a3c7c7847a9a96199c2e0bb4d5a4210e32bd2b812b320f8266963e5d894f4e77733a40b0199865cca582a12035807ca885c7365ae2a11e27d86ece22bb1d4f4
Hashed signature: O6V6m1g2yy8f6DEmlX5UlEoUf9V8ABKVhnOQlW+cl4s=
Auth string: type=master&ver=1.0&sig=O6V6m1g2yy8f6DEmlX5UlEoUf9V8ABKVhnOQlW+cl4s=
URL encoded auth string: type%3dmaster%26ver%3d1.0%26sig%3dO6V6m1g2yy8f6DEmlX5UlEoUf9V8ABKVhnOQlW%2bcl4s%3d
URL: https://mkaesz-cosmosdb.documents.azure.com/dbs/products/colls/clothes/docs
Request URL: 'https://mkaesz-cosmosdb.documents.azure.com/dbs/products/colls/clothes/docs'
Request method: 'POST'
Request headers:
    'User-Agent': 'AZURECLI/2.13.0'
    'Accept-Encoding': 'gzip, deflate'
    'Accept': '*/*'
    'Connection': 'keep-alive'
    'x-ms-date': 'Thu, 15 Oct 2020 14:36:51 GMT'
    'x-ms-documentdb-partitionkey': '["asd123"]'
    'x-ms-documentdb-is-upsert': 'true'
    'x-ms-version': '2018-12-31'
    'x-ms-documentdb-isquery': 'true'
    'Content-Type': 'application/json'
    'Authorization': 'type%3dmaster%26ver%...'
    'x-ms-client-request-id': 'd0b39fcf-a9d4-48db-9fbb-1f4b308aa911'
    'CommandName': 'rest'
    'ParameterSetName': '--verbose -m -b -u --headers'
    'Content-Length': '72'
Request body:
{  
    "id": "1qwe23",
    "clothesId": "asd123",
    "name": "socks"
}
Response status: 200
Response headers:
    'Cache-Control': 'no-store, no-cache'
    'Pragma': 'no-cache'
    'Transfer-Encoding': 'chunked'
    'Content-Type': 'application/json'
    'Server': 'Microsoft-HTTPAPI/2.0'
    'Strict-Transport-Security': 'max-age=31536000'
    'x-ms-last-state-change-utc': 'Thu, 15 Oct 2020 08:50:07.522 GMT'
    'etag': '"0b003d1f-0000-0d00-0000-5f885e830000"'
    'x-ms-resource-quota': 'documentSize=51200;documentsSize=52428800;documentsCount=-1;collectionSize=52428800;'
    'x-ms-resource-usage': 'documentSize=0;documentsSize=0;documentsCount=8;collectionSize=0;'
    'lsn': '16'
    'x-ms-schemaversion': '1.10'
    'x-ms-alt-content-path': 'dbs/products/colls/clothes'
    'x-ms-content-path': 'i-IqALOeC3o='
    'x-ms-quorum-acked-lsn': '15'
    'x-ms-current-write-quorum': '3'
    'x-ms-current-replica-set-size': '4'
    'x-ms-xp-role': '1'
    'x-ms-global-Committed-lsn': '15'
    'x-ms-number-of-read-regions': '1'
    'x-ms-transport-request-id': '3'
    'x-ms-cosmos-llsn': '16'
    'x-ms-cosmos-quorum-acked-llsn': '15'
    'x-ms-session-token': '0:0#16#27=-1'
    'x-ms-request-charge': '10.29'
    'x-ms-serviceversion': 'version=2.11.0.0'
    'x-ms-activity-id': '80710ae9-ea91-42e6-a093-95beda569360'
    'x-ms-gatewayversion': 'version=2.11.0'
    'Date': 'Thu, 15 Oct 2020 14:36:50 GMT'
Response content:
{"id":"1qwe23","clothesId":"asd123","name":"socks","_rid":"i-IqALOeC3qGhB4AAAAAAA==","_self":"dbs\/i-IqAA==\/colls\/i-IqALOeC3o=\/docs\/i-IqALOeC3qGhB4AAAAAAA==\/","_etag":"\"0b003d1f-0000-0d00-0000-5f885e830000\"","_attachments":"attachments\/","_ts":1602772611}
{
  "_attachments": "attachments/",
  "_etag": "\"0b003d1f-0000-0d00-0000-5f885e830000\"",
  "_rid": "i-IqALOeC3qGhB4AAAAAAA==",
  "_self": "dbs/i-IqAA==/colls/i-IqALOeC3o=/docs/i-IqALOeC3qGhB4AAAAAAA==/",
  "_ts": 1602772611,
  "clothesId": "asd123",
  "id": "1qwe23",
  "name": "socks"
}
Command ran in 0.526 seconds (init: 0.065, invoke: 0.461)

```


