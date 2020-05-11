class MenusController < ApplicationController

    # get "/menus/new"
    def new
      @menu = Menu.new
      make_blank_items
    end
  
    # post "/menus"
    def create
      @menu = Menu.new(menu_params)
      if @menu.save
        redirect_to menu_path(@menu)
      else
        redirect new_menu_path
      end
    end
  
    def show
     # @menu = Menu.find(params[:id])
    end

    def index
        if @menus = Menu.all
        else
          @menu.errors.full_messages
        end
    end

    def edit
      @menu = Menu.find(params[:id])
      @item = Item.all
    end

    def update
      @menu = Menu.find(params[:id])

      if @menu.update(params.require(:menu).permit(:name))
        redirect_to menus_path
      else
        redirect_to new_menu_path
      end
    end

    def destroy
      @menu = Menu.find(params[:id])
      if @menu.destroy
        redirect_to menus_path
      end
    end

  
    private
  
    def menu_params
      params.require(:menu).permit(:name)
    end
  
    def make_blank_items
      @new_items =  @menu.tap{|m| 3.times { m.items.build} }.items
    end

    def item_params
      params.require(:item).permit(:name, :description, :price, :is_special, :size)
    end

end
