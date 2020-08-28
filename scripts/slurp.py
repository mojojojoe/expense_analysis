""" This program takes a statement file in csv format 
which has also been categorised and grouped 
and places unique rows into a sqlite3 database.
"""

DATA_DIRECTORY = '../data/'
DB_DIRECTORY = '../db/'
DATA_FILE  = 'bank_statement.csv'
DB_FILE = 'bank.db'

DATA_URI = DATA_DIRECTORY + DATA_FILE
DB_URI = DB_DIRECTORY + DB_FILE

import sqlite3 as database
import pandas as pandas

def main()  -> object:
    conn: Any = database.connect(DB_URI)
    pandas.read_csv(DATA_URI).to_sql('statement',conn)
    return 1

main()