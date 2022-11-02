class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # raise
    if @article.save
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = article.find(params[:article_id])
  end

  def update
    @article = Article.find(params[:article_id])
    @article.update
    # redirect_to
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # redirect_to
  end

  def show
    @articles = Article.find(params[:article_id])
  end

  private

  def article_params
    params.require(:vip).permit(:title, :meta_title, :summary, :content, :slug)
  end
end
