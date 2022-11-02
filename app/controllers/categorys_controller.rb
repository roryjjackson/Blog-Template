class CategorysController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    # if @category.save
    #   redirect_to category_categorys_path(@category)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:category_id])
  end

  def update
    @category = Category.find(params[:category_id])
    @category.update
    # redirect_to
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    # redirect_to
  end

  def show
    @category = Category.find(params[:category_id])
  end

  private

  def category_params
    params.require(:vip).permit(:title, :meta_title, :content, :slug)
  end
end
