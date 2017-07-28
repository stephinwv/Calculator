require "sinatra"
require_relative "functions.rb"

get '/' do #Makes homepage
	erb :index #homepage
	
end
get '/functions' do
	
# 	name = params[:user_name].capitalize
# 	age = params[:age]	
# 	haircolor = params[:haircolor]
# 	eyecolor = params[:eyecolor]
# 	fav_foods = params[:fav_foods]
# 	fav_drink = params[:fav_drink]
# 	num1 = params[:num1]
# 	num2 = params[:num2]
# 	num3 = params[:num3]
# 	total = params[:total]
# 	erb :total, :locals => {:name=> name, :age=> age, :haircolor=> haircolor, :eyecolor => eyecolor, :fav_foods => fav_foods, :fav_drink=> fav_drink, :num1=> num1, :num2 => num2, :num3 => num3, :total => total}	
 end