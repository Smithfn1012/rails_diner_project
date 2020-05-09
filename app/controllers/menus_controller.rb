class MenusController < ApplicationController

    def new
        @menu = Menu.new
        make_blank_items
    end

    def create
        @menu = Menu.new(menu_params)
        make_blank_items
        if @menu.save
            redirect_to menu_path(@menu)
        else
            render :new
        end
    end

    def show
        @menu = Menu.find(params[:id])
    end

    private

    def menu_params
        params.require(:menu).permit(:name, items_attributes: [:price, :name, :description])
    end

    def make_blank_items
        @new_items = @menu.tap{|m| 3.times { m.items.build} }.items
    end
end
