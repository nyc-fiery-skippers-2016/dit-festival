require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(User.new(username: "This is a User",judge: false, password: "password")).to be_valid
  end

  it "is not valid without valid attributes" do
    expect(User.new).to_not be_valid
  end

  it "is not valid without a username" do
    expect(User.new(judge: false, password: "password")).to_not be_valid
  end

  it "is not valid without a judge boolean" do
    expect(User.new(username: "Username", password: "password")).to_not be_valid
  end

  it "is not valid without a password" do
    expect(User.new(username: "Username", judge: false)).to_not be_valid
  end
end
