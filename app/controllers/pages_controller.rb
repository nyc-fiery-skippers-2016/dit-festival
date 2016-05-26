class PagesController < ApplicationController

  def winner
    @categories = Category.all
  end

end
