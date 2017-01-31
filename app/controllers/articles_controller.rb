class ArticlesController < ApplicationController
	# before_action :all_articles, only: [:index, :create]
	# respond_to :html, :js

	def index
		@articles = Article.all
	end

	def new
		@category = Category.find(params[:category_id])
		@article = Article.new

		respond_to do |format|
	    format.html
	    format.js {}
  	end
	end

	def edit
  	@article = Article.find(params[:id])
	end

	def create
		@category = Category.find(params[:category_id])

		@article = @category.articles.create(article_params)
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
		@article = Article.find(params[:id])
  	@article.destroy
 
  	redirect_to categories_path

  	respond_to do |format|
	    format.html
	    format.json
  	end
	end

	def update
		@article = Article.find(params[:id])
 
	  if @article.update(article_params)
	    redirect_to article_path(@article)
	  else
	    render 'edit'
	  end
	end

	private
	  def article_params
	    params.require(:article).permit(:description, :conditon, :price, :category_id)
	  end


end
