class CommentsController < ApplicationController

  before_action :require_user, only: [:create, :new]

  def new
    @comment = Comment.new
    @thing = Thing.find(params[:thing_id])
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.thing_id = params[:thing_id]
    if @comment.save
      flash[:success] = "You left a comment!"
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
