require 'sinatra'

get '/' do
	"hello, world!"
end

get '/about' do
	"something about you here..."
end

get '/hello' do
	"hello there :)"
end

get '/hello/:name' do
	#params[:name]
	# "hello there #{params[:name]}"
	"hello there #{params[:name].upcase}"
end

get '/hello/:name/:city' do
	"hey there #{params[:name]} from #{params[:city]}!"
end

get '/more/*' do
	params[:splat].inspect
end

get '/form' do
	erb :form
end

post '/form' do
	#"you posted something"
	"you said '#{params[:message]}'"
end

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

# get '/*' do
	# status 404
	# 'not found'
# end

not_found do
	status 404
	erb :oops
end
