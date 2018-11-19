require 'sinatra'
require_relative 'random_pairs.rb'
get '/' do
	erb :page1
end
post '/list' do
	check = params[:names]
	if check == nil
		redirect '/'
	else
		list = params[:names].join(",")
		redirect 'list?list=' + list
	end
end
get '/list' do
	list = params[:list].split(",")
	pairedlist = pair(list)
	puts "pairedlist: #{pairedlist}"
	erb :page2, locals: {list: list, pairedlist: pairedlist}
end