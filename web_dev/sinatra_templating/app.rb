# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

campuslist = <<-SQL
  CREATE TABLE IF NOT EXISTS campus(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
db.execute(campuslist)
#db.execute("INSERT INTO campus (name) VALUES ('SD')")
# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/campuses' do
  @campuses = db.execute("SELECT DISTINCT campus FROM students")
  @newcampuses = db.execute("SELECT name FROM campus")
  erb :campus_list
end

get '/campus/new' do
  erb :addcampus
end

post '/campus' do
  db.execute("INSERT INTO campus (name) VALUES (?)", [params['name']])
  redirect '/campuses'
end


