class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
	end

	def show
		
	end

	def edit
		
	end

	def destroy
		
	end

	def update
		
	end
end
