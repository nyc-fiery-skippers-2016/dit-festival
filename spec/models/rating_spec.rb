require 'rails_helper'

RSpec.describe Rating, type: :model do
  it "is valid with valid attributes" do
    expect Rating.new(score: 4, user_id: 1, film_id: 1)).to be_valid
  end

  it "is not valid without valid attributes" do
    expect Rating.new).to_not be_valid
  end

  it "is not valid without a user_id" do
    expect Rating.new(score: 5, film_id: 1)).to_not be_valid
  end

  it "is not valid without a film_id" do
    expect Rating.new(user_id: 1, score: 5)).to_not be_valid
  end

  it "is not valid without a score" do
    expect Rating.new(user_id: 1, film_id: 1)).to_not be_valid
  end
end