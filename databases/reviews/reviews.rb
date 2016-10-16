# create database to keep track of movies watched and books read
# and reviews of them

require 'sqlite3'

db = SQLite3::Database.new("reviews.db")