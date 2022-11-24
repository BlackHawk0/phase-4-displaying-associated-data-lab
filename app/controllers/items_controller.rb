class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, include: :user, status: :ok
    end
end
