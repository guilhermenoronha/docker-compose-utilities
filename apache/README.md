# How to get started

## Apache Airflow

### Installing

- docker-compose -f airflow.yaml up airflow-init
- docker-compose -f airflow.yaml up
- go to localhost:8080
- login
  - user: airflow
  - password: airflow

### Connecting DB into DBeaver
- open the terminal
- docker ps (to get the id of the postgres cointainer)
- docker inspect postgres_id
- get the IP
- connect to dbeaver
  - host: postgres_container_ip
  - user: airflow
  - password: airflow
  - database: airflow

## Apache Spark

### Installing 
- docker-compose -f pyspark-notebook.yaml up
- go to http://localhost:8888/lab?token=1234

### Creating a spark Session

```python
from pyspark.sql import SparkSession
from pyspark.conf import SparkConf

conf = SparkConf().setAll([
    ('spark.app.name', 'Any purpose notebook'),
    ('spark.master', 'local[*]')
])
spark = SparkSession.builder.config(conf=conf).getOrCreate()
```