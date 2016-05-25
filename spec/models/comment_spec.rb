require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "is valid with valid attributes" do
    expect(Comment.new(body: "This is a comment",user_id: 1, film_id: 1)).to be_valid
  end

  it "is not valid without valid attributes" do
    expect(Comment.new).to_not be_valid
  end

  it "is not valid without a user_id" do
    expect(Comment.new(body: "This is a comment",review_id: 1)).to_not be_valid
  end

  it "is not valid without a review_id" do
    expect(Comment.new(user_id: 1, body: "This is a comment")).to_not be_valid
  end

  it "is not valid without a body" do
    expect(Comment.new(user_id: 1, review_id: 1)).to_not be_valid
  end
end
