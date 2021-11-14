# API Backend For BITS M. Tech DBMS Assignment

This is a Flask app which acts as an API for the frontend. 

### Requirements

```
python 3.7
mysql 8.0
```

### Set Up

Install mysql in the system. Create a database called `bits41`. Then restore the tables and data using the following command.

```
mysql -u username -h localhost bits41 -p < db-dump.sql
```

Create a python virtual environment

```
python3.7 -m venv .venv
source .venv/bin/activate
```

Install flask and mysql connector for python

```
pip install -U Flask
pip install mysql-connector-python
```

Now cd to the flask app directory and start the application

```
cd flask_app
flask run
```

The app will start on port 5000. You can view the following APIs:

```
http://127.0.0.1:5000/inventory
http://127.0.0.1:5000/orders
```