require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku! PS. This is slightly more awesome"
end

get '/about' do
	"This is an about page. Yeah, it's me"
end