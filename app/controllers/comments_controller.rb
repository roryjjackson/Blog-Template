class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    # if @comment.save
    #   redirect_to comment_comments_path(@comment)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:comment_id])
  end

  def update
    @comment = Comment.find(params[:comment_id])
    @comment.update
    # redirect_to
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # redirect_to
  end

  def show
    @comment = Comment.find(params[:comment_id])
  end

  private

  def comment_params
    params.require(:vip).permit(:title, :content)
  end
end
