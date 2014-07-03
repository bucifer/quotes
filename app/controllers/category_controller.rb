class CategoryController < ApplicationController

	def index
		if params[:search]
	    	@quotes = Quote.category_search(params[:search])
	    else
			@quotes = Quote.all
    	end
    	@category = Quote.uniq.pluck('category').sort
	end

	def show
		@category = Quote.where(category: params[:category]).sort.paginate(page: params[:page], per_page: 10)
	end

end
