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

    def edit
        @order = Order.find(params[:id])
        @items = Item.all
    end

    def update
        @order = Order.find(params[:id])

        if @order.update(order_params)
            redirect_to orders_path
        else
            redirect_to new_order_path
        end
    end

    def destroy
        @order = Order.find(params[:id])
        if @order.destroy
            redirect_to orders_path
        else
            redirect_to orders_path
        end
    end

    def order_params
      params.require(:order).permit(:user_id, item_ids: [])
    end
end