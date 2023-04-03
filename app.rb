#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.sqlite3"}

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end

get '/cart' do
	@order = params[:orders]
	@order_list = @order.split(';')
	@products = Product.all

	erb :cart
end

post '/cart' do
	@order = params[:orders]
	@order_list = @order.split(';')
	@products = Product.all

	erb :cart
end

post '/order' do
	@user    = params[:username]
	@phone   = params[:phone]
	@address = params[:address]
	@order   = params[:order]
	
	order = Order.new
	order.user = @user
	order.phone = @phone
	order.address = @address
	order.order = @order
	order.save

	redirect '/'
end

get '/about' do
	erb :about
end

#lesson 34, 1.23.17
