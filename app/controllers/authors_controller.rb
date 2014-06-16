class AuthorsController < ApplicationController

	def index
		@quotes = Quote.all
	end

	def show
		@author = Quote.where(author: params[:author])
	end


end
