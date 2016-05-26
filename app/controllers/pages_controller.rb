class PagesController < ApplicationController

	def show
		@category1 = Category.find(1).films.sort_by { |film| film.score }
		@category2 = Category.find(2).films.sort_by { |film| film.score }
		@category3 = Category.find(3).films.sort_by { |film| film.score }
		@category4 = Category.find(4).films.sort_by { |film| film.score }
		@category5 = Category.find(5).films.sort_by { |film| film.score }
		@category6 = Category.find(6).films.sort_by { |film| film.score }
	end
end
