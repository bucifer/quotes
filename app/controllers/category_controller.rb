class CategoryController < ApplicationController
before_action :set_category, only: [:show, :edit, :update, :destroy]

	def index
		@quotes = Quote.all
	end

	def show
	end

  # Use callbacks to share common variables, setup or constraints between actions.
    def set_category
      @category = Quote.where(category: params[:category]).order(author: :asc)
    end

end
