require 'will_paginate/array'

class AuthorsController < ApplicationController

	def index
	if params[:search]
	    @authors = Quote.authors_search(params[:search]).uniq.pluck('author').sort
    else
		@authors = Quote.uniq.pluck('author').sort
    end
		@quotes = Quote.all
		#@authors = Quote.uniq.pluck('author').sort.paginate(page: params[:page], per_page: 25)
		#paginate testing
	end

	def show
		@author = Quote.where(author: params[:author])
		@author_paginate = @author.sort.paginate(page: params[:page], per_page: 10)
		@weirdAuthorsArray = 
		['Asian Proverb', 'Batman', 'Bible', 'Chinese Proverb', 'Terry Bu', 'Fortune Cookie', 'Japanese Proverb', 'Korean Proverb', 'Unknown']
		@authors = Quote.uniq.pluck('author').sort
		@nextAuthor = @authors[(@authors.index(@author.first.author))+1]
		@previousAuthor = @authors[(@authors.index(@author.first.author))-1]

	end


end
