""" This program takes a statement file in csv format 
which has also been categorised and grouped 
and places unique rows in a sqlite3 database.
"""

DATA_DIRECTORY = 'C:/Users/bruce/dev/expenses/data/'
DATA_FILE  = 'Statement_1922018686_1027.csv'
DATA = DATA_DIRECTORY + DATA_FILE


import sqlite3 as db
import pandas as pd
print('pandas loaded')



def main():
    conn = db.connect('../db/bank.db')
    df = pd.read_csv(DATA)
    print(df)   
    df.to_sql('statement',conn)
    


    
main()
