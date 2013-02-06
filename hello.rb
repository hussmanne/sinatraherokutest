require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku! PS. This is slightly more awesome"
end

get '/about' do
	"This is an about page. Yeah, it's me"
end

blog = [ 1, 2, 3 ]


get '/posts/:slug' do |slug|
	postnumber = slug
	"This is post " + blog[postnumber].to_s
end
