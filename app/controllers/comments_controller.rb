class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params[:comment_id])
  end

  def new
    @review = Review.find_by(id: params[:review_id])
    @comment = Comment.new
  end

  def edit
    @review = Review.find_by(id: params[:review_id])
    @comment = Comment.find_by(id: params[:comment_id])

    if current_user != @comment.user
      redirect_to review_comments_path(@review, @comment)
    end
  end

  def create
    @review = Review.find_by(id: params[:review_id])
    @comment = Comment.new(comment_params.merge(user: current_user, review: @review))
    if @comment.save
      redirect_to @review
    else
      render 'new'
    end
  end

  def update
    @review = Review.find_by(id: params[:review_id])
    @comment = Comment.find_by(id: params[:id])

    if @comment.update(comment_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find_by(id: params[:review_id])
    @comment = Comment.find_by(id: params[:id])

    if current_user != @comment.user
      @comment.destroy
      redirect_to review_comments_path
    else
      redirect_to @review
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :review_id)
    end
end
