require 'sinatra'
require_relative 'random_pairs.rb'
get '/' do
	erb :page1
end
post '/list' do
	check = params[:names]
	if check == nil
		redirect '/'
	elsif check.include? ""
		redirect '/'
	else
		list = params[:names].join(",")
		redirect 'list?list=' + list
	end
end
get '/list' do
	list = params[:list].split(",")
	pairedlist = pair(list)
	erb :page2, locals: {list: list, pairedlist: pairedlist}
end
post '/page3' do
	pairedlist = params[:pairedlist]
	redirect 'page3?pairedlist=' + pairedlist
end
get '/page3' do
	pairedlist = eval(params[:pairedlist])
	puts "Pairedlist: #{pairedlist}"
	erb :page3, locals: {pairedlist: pairedlist}
end
