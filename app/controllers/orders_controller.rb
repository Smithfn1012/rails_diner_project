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

    def show
        @order = Order.find(params[:id])
    end

    private

    def order_params
        params.require(:order).permit(:user_id, item_ids: [])
    end
end
