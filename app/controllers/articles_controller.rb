class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@category = Category.find(params[:category_id])
		@article = Article.new
	end

	def edit
  	@article = Article.find(params[:id])
	end

	def create
		@category = Category.find(params[:category_id])

		@article = Article.new(article_params)
		if @article.save
			redirect_to category_path(@category)
		else
			render "new"
		end

	end

	def show
		@article = Article.find(params[:id])
	end


	def destroy
		
	end

	def update
		
	end

	private
	  def article_params
	    params.require(:article).permit(:description, :conditon, :price, :category_id)
	  end


end
