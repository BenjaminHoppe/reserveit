class MenuItemsController < ApplicationController

    def index
        @menu_items = MenuItem.all
    end

    # def show

    # end

    # def new

    # end

    def create
        @restaurant = Restaurant.find_by(params[:id])

        @menu_item = MenuItem.new
        @menu_items = @restaurant.menu_items
    end

    def edit
        @restaurant = Restaurant.find_by(params[:id])
        @menu_item = MenuItem.find(params[:id])
        @menu_item.restaurant = @restaurant
    end

    def update
        @restaurant = Restaurant.find_by(params[:id])
        @menu_item = MenuItem.find(params[:id])
        @menu_item.dish = params[:menu_item][:dish]
        @menu_item.price = params[:menu_item][:price]
        @menu_item.restaurant = @restaurant

        if @menu_item.save
            redirect_to restaurant_path(@restaurant)
        else
            render render edit_menu_item_path
        end
    end

    def destroy
        @menu_item = MenuItem.find(params[:id])
        @restaurant = Restaurant.find(params[:restaurant_id])
        @restaurant_item.destroy
        redirect_to restaurant_path
    end

end
