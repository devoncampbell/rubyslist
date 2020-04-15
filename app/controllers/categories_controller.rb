class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        @uniform = @categories[0]
        @textbook = @categories[1]
        @tutor = @categories[2]
    end

    def show
        @listings = Listing.where(category_id: params[:id])
    end

end