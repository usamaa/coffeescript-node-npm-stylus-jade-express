run:
	coffee app.coffee

DBNAME = $(shell ./getcfg database dbname)
DBUSER = $(shell ./getcfg database username)
DBPASS = $(shell ./getcfg database password)
MYSQL = /Applications/MAMP/Library/bin/mysql --user=$(DBUSER) --password=$(DBPASS)

load:
	$(MYSQL) -e "CREATE DATABASE IF NOT EXISTS $(DBNAME)"
	$(MYSQL) $(DBNAME) < database.sql

