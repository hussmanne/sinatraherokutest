require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku! PS. This is slightly more awesome"
end

get '/about' do
	"This is an about page. Yeah, it's me"
end

blog = [ 	
					{
					  :title => "this is a title",
						:body => "this is the body"
					},
 					{ 
 						:title => "my next title",
 					  :body => "this is another body"
 					},
  				{ 
  					:title => "funny things happen",
  				  :body => "this is a funny story"
  				}
  			]

get '/posts/:slug' do |slug|
	index = Integer(slug, 10)
	entry = blog[index]
	title = entry.fetch(:title)
	body = entry.fetch(:body)
	title.to_s + "<br/>" + body.to_s
end

#blocks and hashes in ruby
#sinatra templates for blogs, how to return more than a string