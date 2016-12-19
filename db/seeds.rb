# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# TODO:
# Create a seed admin user. Following the logic below. Remember,
# The user or any other object will be created based on paramaters in the model.
# So, if you require that a user object have a certain attribute in the model
#But don't specify it here, it should throw an error.
#If you run heroku run rails db:seed in production, make sure to change the password since this is viewable on Github

#admin = User.create!(first_name: "admin", last_name: "user", email: "admin@test.com", encrypted_password: "Password1")

# TODO 2: 
# Look into how you could use a loop to create multiple objects at once

Product.create(:name => "SP600", :description => "Incredibly light frame and specially engineered chain and gear design. This bike is capable of high speeds on a smooth service")
