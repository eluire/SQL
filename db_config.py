import psycopg2

connection = psycopg2.connect(      
  user="postgres",
  password="",
  host="127.0.0.1",
  port="5432",
  database="sql_train"
)

cursor = connection.cursor()




