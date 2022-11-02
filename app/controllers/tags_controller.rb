class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    # if @tag.save
    #   redirect_to tag_tags_path(@tag)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def index
    @tags = Tag.all
  end

  def edit
    @tag = Tag.find(params[:tag_id])
  end

  def update
    @tag = Tag.find(params[:tag_id])
    @tag.update
    # redirect_to
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    # redirect_to
  end

  def show
    @tag = Tag.find(params[:tag_id])
  end

  private

  def tag_params
    params.require(:vip).permit(:title, :meta_title, :content, :slug)
  end
end
