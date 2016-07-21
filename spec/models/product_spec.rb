require 'rails_helper'

describe Product do
	before do
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: "rspec@practice.com", password: "123456")
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
		@product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
	end

	it "returns the average rating of all comments" do
		expect(@product.comments.average(:rating)).to eq 3
	end

	it "if not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end
