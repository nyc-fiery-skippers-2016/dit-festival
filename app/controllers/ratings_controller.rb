class RatingsController < ApplicationController
	def create
		@rating = Rating.new(rating_params)
		@ratings.user = current_user

		if @rating.save
			redirect_to film_path(@rating.film_id)
		else
			redirect_to film_path(@rating.film_id)
		end
	end
end
