class ItemsController < ApplicationController

    def index 
        if params[:name]
            @items = Item.where('name LIKE ?', "%#{params[:name]}")
        else
            @items = Item.all 
        end 
    end 

    def show 
        @item = Item.find(params[:id])
        @purchase = current_customer.carts.purchases
    end

    def add_to_cart 
    end 

end
