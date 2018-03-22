class ArticlesController < ApplicationController
  def index
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Artcile.new(article_params)
  end

  private
  def article_params
  	params.require(:article).permit(:title,:body)
  end
end
