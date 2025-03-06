# Rails API DynamoDb

This project is an API developed with:
- docker
- docker compose
- ruby on rails
- dynamo db

Below are the steps to set up and run the project on your local environment.

---

## Prerequisites

Before you get started, make sure you have the following installed on your machine:

- **docker**
- **docker compose**

## Notes
Using the ```docker compose``` or ```docker-compose``` command will depend on your version and configuration of docker compose.

---

## Installation

Follow these steps to set up your development environment:

### 1.  Clone repository
Clone this repository from GitHub.com to your local computer

```bash
git clone https://github.com/agamezr/rails_api_aws_dynamodb.git
```

```bash
cd rails_api_aws_dynamodb
```

### 2. Create the .env file at the root of the project

```bash
DYNAMODB_ENDPOINT=     # Dynamo db endpoint, (http://dynamodb-local:8000)
AWS_REGION=            # Region of AWS
DYNAMODB_TABLE=        # Table name
AWS_ACCESS_KEY_ID=     # AWS key
AWS_SECRET_ACCESS_KEY  # AWS secret
```
## Notes
For local work, we can use the values like env_example.txt, check in the root path of the project


### 3. Build the project
Docker must be running and your console must be in the project path

```bash
docker compose build
```

### 4. Run migrations 
- ```docker compose up``` must be running in another console/terminal
- or ```docker compose up -d``` to run containers in the background

This command creates the Database

```bash
docker compose run web bash  # run rails bash
```

```bash
rails aws_record:migrate   # run migrations
```


### 5. Run the project
This command runs the container

```bash
docker compose up
```

### 6. Create default data for database (only the first time)
This commands runs a script to charge default information.
- ```docker compose up``` must be running in another console/terminal
- or ```docker compose up -d``` to run containers in the background

```bash
docker compose run web bash
```

Inside the container run
```bash
rails runner db/seed.rb
```

```bash
exit
```

### 8.  Use the API
Check the postman collecction

EndPoints.postman_collection.json

