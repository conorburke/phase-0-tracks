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

def create_user(db, user)
  db.execute("INSERT INTO users (name) VALUES (?)", [user])
end

def delete_user(db, user)
  db.execute("DELETE FROM users WHERE id=(?)", [user])
end

def insert_book(db, title, author)
  db.execute("INSERT INTO books (title, author) VALUES (?, ?)"\
    , [title, author]) 
end

def delete_book(db, id)
  db.execute("DELETE FROM books WHERE id=(?)", [id])
end

def insert_movie(db, title, based, book_id)
  db.execute("INSERT INTO movies (title, based_on_book, book_id)"\
  " VALUES (?, ?, ?)", [title, based, book_id])
end

def delete_movie(db, id)
  db.execute("DELETE FROM movies WHERE id=(?)", [id])
end

def create_book_review(db, title, rating, comments, bid, uid)
  db.execute("INSERT INTO book_reviews (title, rating, "\
    "comments, book_id, user_id) VALUES (?, ?, ?, ?, ?)"\
    , [title, rating, comments, bid, uid])
end

def delete_book_review(db, id)
  db.execute("DELETE FROM book_reviews WHERE id=(?)", [id])
end

def create_movie_review(db, title, rating, comments, mid, uid)
  db.execute("INSERT INTO movie_reviews (title, rating, "\
    "comments, book_id, user_id VALUES (?, ?, ?, ?, ?)"\
    , [title, rating, comments, mid, uid])
end


#create tables if not present
db.execute(users_table)
db.execute(books_table)
db.execute(movies_table)
db.execute(book_reviews_table)
db.execute(movie_reviews_table)

#create users
#db.execute("INSERT INTO users (name) 
#VALUES (\"Conor\"), (\"Claire\")")

#USER INTERFACE
puts "Welcome to the Book and Movie Reviews Database."

#create or choose user
puts "Are you a new user?"
user = gets.chomp
if user.match(/^y*/i)
  puts "What is your name?"
  user_name = gets.chomp
  create_user(db, user_name)
else
  puts "What is your user id?"
  user_id = gets.chomp
end

puts "Would you like to add a book to your list?"
if user.match(/^y*/i)
  puts 













