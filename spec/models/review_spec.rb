require 'rails_helper'

RSpec.describe Review, type: :model do
  it "is valid with valid attributes" do
    expect(Review.new(body: "This is a Review",user_id: 1)).to be_valid
  end

  it "is not valid without valid attributes" do
    expect(Review.new).to_not be_valid
  end

  it "is not valid without a user_id" do
    expect(Review.new(body: "This is a Review")).to_not be_valid
  end

  it "is not valid without a body" do
    expect(Review.new(user_id: 1)).to_not be_valid
  end
end