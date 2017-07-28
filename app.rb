require "sinatra"
require_relative "functions.rb"

get '/' do
	
	erb :index
end

post '/index' do

	math = params[:math]
	num1 = params[:num1]
	num2 = params[:num2]
	total = calc(math, num1, num2)
	redirect '/results?math=' + math + '&num1=' + num1 + '&num2=' + num2 + '&total=' + total
end

get '/results' do
	math = params[:math]
	num1 = params[:num1]
	num2 = params[:num2]
	total = params[:total]
	erb :results, :locals=>{:math => math, :num1 => num1, :num2 => num2, :total => total}
end

post '/results' do
end