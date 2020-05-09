class OrdersController < ApplicationController
    def new
        @order = Order.new
        @users = User.all
        @items = Item.all
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to order_path(@order)
        else
            @users = User.all
            @items = Item.all
            render :new
        end
    end
end
