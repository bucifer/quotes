require 'will_paginate/array'

class AuthorsController < ApplicationController

	def index
		@quotes = Quote.all.paginate(page: params[:page], per_page: 10)
		@authors = Quote.uniq.pluck('author').sort.paginate(page: params[:page], per_page: 25)
	end

	def show
		@author = Quote.where(author: params[:author])
		@weirdAuthorsArray = 
		['Asian Proverb', 'Batman', 'Bible', 'Chinese Proverb', 'Terry Bu', 'Fortune Cookie', 'Japanese Proverb', 'Korean Proverb', 'Unknown']
	end


end
