FactoryGirl.define do
    
  sequence(:email) { |n| "user#{n}@example.com" }
    
  factory :user do
    email 
    password "qwerty1"
    first_name "Dick"
    last_name "Douche"
    admin false
  end
  
  factory :admin, class: User do
  email 
  password "qwertyuiop"
  first_name "Admin"
  last_name "User"
  admin true
  end
end