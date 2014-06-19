require 'will_paginate/array'

class AuthorsController < ApplicationController

	def index
		@quotes = Quote.all.paginate(page: params[:page], per_page: 10)
		#@authors = Quote.uniq.pluck('author').sort.paginate(page: params[:page], per_page: 25)
		#paginate testing
		@authors = Quote.uniq.pluck('author').sort

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
