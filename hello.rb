require 'rubygems'
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new "/Users/hussman/Dropbox/Documents Folder/rubyjam/Heroku/test.db"

get '/' do
  "Hello from Sinatra on Heroku! PS. This is slightly more awesome"
end

get '/about' do
	"This is an about page. Yeah, it's me"
end

get '/posts/:slug' do |slug|
	index = Integer(slug, 10)
	rows = db.execute("select * from posts WHERE id = #{index}")
	row = rows[0]
	title = row[1]
	body = row[2]
	title.to_s + "<br/>" + body.to_s
end

#blocks and hashes in ruby
#sinatra templates for blogs, how to return more than a string