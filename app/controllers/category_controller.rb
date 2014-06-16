class CategoryController < ApplicationController

	def index
		@quotes = Quote.all
	end

	def show
		@category = Quote.where(category: params[:category])
	end

end
