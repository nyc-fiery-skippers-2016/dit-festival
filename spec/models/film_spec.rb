require 'rails_helper'

RSpec.describe Film, type: :model do
  it "is valid with valid attributes" do
    expect(Film.new(body: "This is a film",user_id: 1, review_id: 1)).to be_valid
  end

  it "is not valid without valid attributes" do
    expect(Film.new).to_not be_valid
  end

  it "is not valid without a user_id" do
    expect(Film.new(body: "This is a film",review_id: 1)).to_not be_valid
  end

  it "is not valid without a review_id" do
    expect(Film.new(user_id: 1, body: "This is a film")).to_not be_valid
  end

  it "is not valid without a body" do
    expect(Film.new(user_id: 1, review_id: 1)).to_not be_valid
  end
end