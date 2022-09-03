import mysql.connector
import datetime
import random
import time
import os

password = os.environ['MYSQL_ROOT_PASSWORD']

# Hardcoding sleep since there is no way to delay container startup. Needed since container restarts because of MySql
time.sleep(180)

database = mysql.connector.connect(host="mysql",user="root",password=password,database="sales_data")
cursor = database.cursor()
current_time = datetime.datetime.now()

while (True):    
    todays_date = current_time.today()
    todays_time = current_time.now()
    random_number = random.randint(100,1000)
    cursor.execute ("""INSERT INTO sales_insights(date, time, sale_amount) VALUES (%s, %s, %s)""", (todays_date,todays_time,random_number))
    time.sleep(10)
    database.commit()

database.close()
