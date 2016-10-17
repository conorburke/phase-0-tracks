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

def select_user(db, name)
  db.execute("SELECT id FROM users WHERE name=(?)", [name])
end

def insert_book(db, title, author)
  db.execute("INSERT INTO books (title, author) VALUES (?, ?)"\
    , [title, author]) 
end

def delete_book(db, id)
  db.execute("DELETE FROM books WHERE id=(?)", [id])
end

def select_book(db, title)
  db.execute("SELECT id FROM books WHERE title=(?)", [title])
end

def show_books(db)
  db.execute("SELECT * FROM books")
end

def insert_movie(db, title, based, book_id)
  db.execute("INSERT INTO movies (title, based_on_book, book_id)"\
  " VALUES (?, ?, ?)", [title, based, book_id])
end

def delete_movie(db, id)
  db.execute("DELETE FROM movies WHERE id=(?)", [id])
end

def select_movie(db, title)
  db.execute("SELECT id FROM movies WHERE title=(?)", [title])
end

def show_movies(db)
  db.execute("SELECT * FROM movies")
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
if user.match(/^y/i)
  puts "What is your name?"
  user_name = gets.chomp
  create_user(db, user_name)
  user_id = select_user(db, user_name)
else
  puts "What is your name?"
  user_name = gets.chomp
  user_id = select_user(db, user_name)
end

# show books
puts "Do you need to see the book list?"
answer = gets.chomp
if answer.match(/^y/i)
  puts show_books(db)
end

# add a book
puts "Would you like to add a book to the list?"
answer = gets.chomp
if answer.match(/^y/i)
  puts "What is the title?"
  book_title = gets.chomp
  puts "Who is the author?"
  book_author = gets.chomp
  insert_book(db, book_title, book_author)
  puts "Created a record for #{book_title} by #{book_author}."\
    "ID for this book is #{select_book(db, book_title)}. "
end

# delete a book
puts "Would you like to delete a book?"
answer = gets.chomp
if answer.match(/^y/i)
  puts "What book (by ID) do you want deleted?"
  answer = gets.chomp.to_i
  delete_book(db, answer)
end

#show movies 
puts "Do you need to see the movie list?"
answer = gets.chomp
if answer.match(/^y/i)
  puts show_movies(db)
end

# add a movie
puts "Would you like to add a movie to your list?"
answer = gets.chomp
if answer.match(/^y/i)
  puts "What is the title?"
  movie_title = gets.chomp
  puts "Is it based on a book?"
  answer = gets.chomp
  if answer.match(/^y/i)
    book_based = "true"
  else
    book_based = "false"
  end
  puts "What is the book's id (if known)?"
  book_id = gets.chomp.to_i
  insert_movie(db, movie_title, book_based, book_id)
  puts "Created a record for #{movie_title}."
    "ID for this movie is #{select_movie(db, movie_title)}. "    
end

# delete a movie
puts "Would you like to delete a movie?"
answer = gets.chomp
if answer.match(/^y/i)
  puts "What movie (by ID) do you want deleted?"
  answer = gets.chomp.to_i
  delete_book(db, answer)
end

def create_book_review(db, title, rating, comments, bid, uid)
  db.execute("INSERT INTO book_reviews (title, rating, "\
    "comments, book_id, user_id) VALUES (?, ?, ?, ?, ?)"\
    , [title, rating, comments, bid, uid])
end

# add book review
puts "Would you like to write a book review?"
answer = gets.chomp
if answer.match(/^y/i)
  puts "What is the title of the book?"
  title = gets.chomp
  puts "What rating would you give it (1-100)?"
  rating = gets.chomp.to_i
  puts "Add any comments you'd like:"
  comments = gets.chomp
  puts "Put the book ID if known or writ 0"
  bid = gets.chomp.to_i
  uid = user_id[0]
  create_book_review(db, title, rating, comments, bid, uid)
end






















