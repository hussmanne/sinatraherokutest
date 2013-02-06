require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku! PS. This is slightly more awesome"
end

get '/about' do
	"This is an about page. Yeah, it's me"
end

blog = ["post 1", "post 2", "post 3"]


get '/posts/:slug' do |slug|
	"This is " + blog[slug]
end


