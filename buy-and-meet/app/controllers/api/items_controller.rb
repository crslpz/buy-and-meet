class Api::ItemsController < ApplicationController
    before_action :ensure_logged_in!

    def index
        @items = Item.all
        @items
    end
   

    def create
        @items = Item.new(item_params)
        @items.user_id = currentUser.id
        if items.save
            render'/api/items/show'
        else
            render json: @annotation.errors.full_messages, status 422
        end
    end

    def update
      @item = Item.find_by(:id params[:id])

      if @item.update(item_params)
        redirect_to :show
      else 
         render json: @item.errors.full_messages, status: unprocessable_entity
      end
    end

    def destroy
        @item = Item.find(params[:id])
        if @item.destroy
            render 'api/items/show'
        else
           render json: ('item did not update'), status 404 
        end
    end

    def show
        @item = Item.find(params[:id])
    end


    private
    def item_params
      params.require(:item).permit(:title, :item_description, :condition, :asking_price , :negotiable, :user_id)
    end

end
