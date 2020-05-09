class OrdersController < ApplicationController
    def new
        @order = Order.new
        @users = User.all
        @items = Item.all
    end
end
