# create database to keep track of movies watched and books read
# and reviews of them

require 'sqlite3'

db = SQLite3::Database.new("reviews.db")

users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

books_table = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255)
  )
SQL

movies_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    based_on_book BOOLEAN,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id) 
  )
SQL

book_reviews_table = <<-SQL
  CREATE TABLE IF NOT EXISTS book_reviews(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    rating INT,
    comments VARCHAR(255),
    book_id INT,
    user_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

movie_reviews_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movie_reviews(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    rating INT,
    comments VARCHAR(255),
    movie_id INT,
    user_id INT,
    FOREIGN KEY (movie_id) REFERENCES movie(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL


