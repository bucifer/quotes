require 'will_paginate/array'

class AuthorsController < ApplicationController

	def index
		respond_to do |format|
			format.html do
				if params[:search]
		    		@authors = Quote.authors_search(params[:search]).uniq.pluck('author').sort
	   			else
					@authors = Quote.uniq.pluck('author').sort
	    		end	
					@quotes = Quote.all
			end
	    	format.json { 
	    		render :json => Quote.uniq.pluck('author').sort
	    	}
	    end
	end

	def show
		@quotesByAuthor = Quote.where(author: params[:author])
		@quotes_paginate = @quotesByAuthor.sort.paginate(page: params[:page], per_page: 10)
		@weirdAuthorsArray = 
		['Asian Proverb', 'Batman', 'Bible', 'Chinese Proverb', 'Terry Bu', 'Fortune Cookie', 'Japanese Proverb', 'Korean Proverb', 'Unknown']
		@authors = Quote.uniq.pluck('author').sort
		@nextAuthor = @authors[(@authors.index(@quotesByAuthor.first.author))+1]
		@previousAuthor = @authors[(@authors.index(@quotesByAuthor.first.author))-1]

	end


end
