# Milvus CI/CD pipeline

[<img alt="Deploy to Elestio" src="https://elest.io/images/logos/deploy-to-elestio-btn.png" height="40">](https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/milvus)


Deploy Milvus server with CI/CD on Elestio

<img src="milvus.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

Milvus credentials:

    URL: [CI_CD_DOMAIN]:19530
    login: root
    password: [ADMIN_PASSWORD]

# Using Milvus

## Installation

To use the Milvus SDK for Node.js, install it with:

    npm install @zilliz/milvus2-sdk-node

## Initialization

nitialize your Milvus instance in Node.js with the following code:

    const { MilvusClient } = require("@zilliz/milvus2-sdk-node");

    const address = "[CI_CD_DOMAIN]:19530";

    client = new MilvusClient({
        address,
        username: "root",
        password: "[ADMIN_PASSWORD]",
    });

## Creating a Database

You can create a database with the following code:

    const createDatabase = async () => {
        res = await client.createDatabase({
            db_name: "my_database",
        });

        console.log(res);
    };
    createDatabase()

## List databases

You can list all databases with the following code:

    const listDatabases = async () => {
        res = await client.listDatabases();

        console.log(res);
    };
    listDatabases()

## Documentation

For more information, visit https://milvus.io/docs
