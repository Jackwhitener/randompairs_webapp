require 'sinatra'
require_relative 'random_pairs.rb'
get '/' do
	erb :page1
end
post '/list' do
	list = params[:list]
	redirect 'page2?list=' + list
end
get '/page2' do
	list = params[:list]
	erb :page2, locals: {list: list}
end