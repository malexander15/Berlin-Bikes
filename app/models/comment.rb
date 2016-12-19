class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }


	#TODO
	# Practice a simple method with built in Ruby methods: write a simple custom before save method to validate the length of the comment body


end
