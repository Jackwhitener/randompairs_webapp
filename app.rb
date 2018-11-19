require 'sinatra'
require_relative 'random_pairs.rb'
get '/' do
	erb :page1
end
post '/list' do
	list = params[:names].join(",")
	p list
	redirect 'list?list=' + list
end
get '/list' do
	list = params[:list].split(",")
	pairedlist = pair(list)
	p pairedlist
	erb :page2, locals: {list: list, pairedlist: pairedlist}
end