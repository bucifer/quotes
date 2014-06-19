class CategoryController < ApplicationController

	def index
		@quotes = Quote.all
	end

	def show
		@category = Quote.where(category: params[:category]).sort.paginate(page: params[:page], per_page: 10)
	end

end
