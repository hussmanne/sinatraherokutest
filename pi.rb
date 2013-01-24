require "sinatra"

get '/' do
	"Hello Solar System"
end

post '/' do
	"Posted" + body[:fu].to_s
end

get '/about' do
  "Hussein was here"
end

get '/posts/:slug' do |slug|
	"This is a star filled post" + slug.to_s
end
