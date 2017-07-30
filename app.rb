require "sinatra"
require_relative "functions.rb"
#functions.rb is the file that contains the math functions.
get '/' do
	
	erb :index
	#index.erb is basically the homepage and where you start.
end

post '/index' do

	math = params[:math]
	num1 = params[:num1]
	num2 = params[:num2]
	total = calc(math, num1, num2)
	#difined in the function.rb file
	redirect '/results?math=' + math + '&num1=' + num1 + '&num2=' + num2 + '&total=' + total
	#redirects user to the results.erb page and taking with it the results from input entered in index.erb
end

get '/results' do
	math = params[:math]
	num1 = params[:num1]
	num2 = params[:num2]
	total = params[:total]
	erb :results, :locals=>{:math => math, :num1 => num1, :num2 => num2, :total => total}
end

post '/results' do
#Posts results, but no redirect because this is the last page.
end