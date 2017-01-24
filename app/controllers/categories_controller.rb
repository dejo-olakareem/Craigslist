class CategoriesController < ApplicationController
	def index
		@category = Category.all
	end

	def new
		@category = Category.new
	end

	def show
		@category = Category.find(params[:id])
		render html: "", status: :not_found unless @category
	end
end
