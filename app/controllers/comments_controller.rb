class CommentsController < ApplicationController
  before_action :set_item
  

  def index
    @comments = @item.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @item.comments.new(comment_params)
    if @comment.save
      redirect_to dept_item_path(@item.dept_id, @item)
    else
      render :new
    end
  end

  private
    def set_item
      @item= Item.find(params[:item_id])
    end

    def comment_params
      params.require(:comment).permit(:body, :author)
    end
end
