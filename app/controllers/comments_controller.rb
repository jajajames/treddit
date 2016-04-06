class CommentsController < ApplicationController

  before_action :require_user, only: [:create, :new]

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to :root
    else
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
