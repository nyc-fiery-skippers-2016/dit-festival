class RatingsController < ApplicationController
	def create
		@rating = Rating.new(rating_params)
		@rating.user = current_user

		if @rating.save
			redirect_to film_path(@rating.film_id)
		else
			redirect_to film_path(@rating.film_id)
		end
	end

	private
	def rating_params
		params.require(:rating).permit(:score, :user_id, :film_id)
	end
end
