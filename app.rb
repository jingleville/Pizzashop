#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.sqlite3"}

class Product <ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end

get '/cart' do
	erb :cart
end

get '/about' do
	erb :about
end


# lesson 32 40:00