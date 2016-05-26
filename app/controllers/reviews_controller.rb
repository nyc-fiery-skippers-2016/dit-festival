class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def show
		@review = Review.find_by(id: params[:id])
	end

	def new
		@review = Review.new
    @film = Film.find_by(id: params[:film_id])
    if request.xhr?
      render "/reviews/_form", layout: false
    end
	end

	def edit
		@review = Review.find(params[:id])
    @film = Film.find_by(id: params[:film_id])
	end

	def create
		@review = Review.new(review_params.merge(user: current_user))
    @film = Film.find_by(id: @review.film_id)

    
		if logged_in? && @review.save
      		redirect_to @review
    	else
      		render 'new'
      	end
	end

	def update
    	@review = Review.find(params[:id])

    	if @review.update(review_params)
      		redirect_to @review
    	else
      		render 'edit'
    	end
  	end

  def destroy
    @review = Review.find_by(id: params[:id])
    @film = @review.film
    @review.destroy

    redirect_to @film
  end

  private

    def review_params
      params.require(:review).permit(:body,:film_id)
    end
end
