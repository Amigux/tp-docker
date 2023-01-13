import os

config = {
    'user' : os.environ.get('APP_DB_USER'),
    'password' : os.environ.get('APP_DB_PASSWORD'),
    'host': os.environ.get('APP_DB_HOST'),
    'port': int(os.environ.get('APP_DB_PORT')),
    'database': os.environ.get('APP_DB_NAME')
}
