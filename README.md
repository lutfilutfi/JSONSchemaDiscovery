# JSONSchemaDiscovery

## What you need installed to run this project:
* [NodeJS](http://nodejs.org)
* [Mongo DB](https://www.mongodb.org)

## Setting up development environment:
After clone the repo to your local machine, in project's folder:
1. Install global dependencies:
* [Angular CLI](https://cli.angular.io/) `npm install -g @angular/cli`
* [Typescript](https://www.typescriptlang.org/) `npm install -g typescript`

2. Install project dependencies running: `npm install`;

## Development server

Run `npm run dev` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Running the multiple container app
Run `docker-compose up` to simultaneously launch FE BE and Mongo db, make sure docker engine is running before executing the command

## Check similarity of JSONSchema defination 
Use the .bson file in the examples folder to create a collection. Simmply generate the schema defination using the app  and download the file. Use the checksimilar.py script to compare the schema definitions.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).
Before running the tests make sure you are serving the app via `ng serve`.
