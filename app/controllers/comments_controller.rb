class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(created_at: :desc)
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to root_path, notice: "Comment was successfully created."
    else
      @comments = Comment.all.order(created_at: :desc)
      render :index, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
