class CategoryController < ApplicationController

	def index
		respond_to do |format|
			format.html do
				if params[:search]
			    	@quotes = Quote.category_search(params[:search])
			    else
					@quotes = Quote.all
		    	end
		    	@category = Quote.uniq.pluck('category').sort
	    	end
	    	format.json {render :json => Quote.uniq.pluck('category').sort}
    	end
	end

	def show
		@category = Quote.find_by(category: params[:category]) or not_found
		respond_to do |format|
			format.html do
				@category = Quote.where(category: params[:category]).sort.paginate(page: params[:page], per_page: 10)
	    	end
	    	format.json {render :json => Quote.where(category: params[:category]).sort}
    	end
	end

end
