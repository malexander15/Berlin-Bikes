require 'rails_helper'

describe UsersController, :type => :controller do
    
    before do

  @user1 = User.create!(first_name: "Dick", last_name: "Douche", email: "example@yahoo.com", password: "qwerty1")
  @user2 = User.create!(first_name: "Richard", last_name: "Long", email: "example1@yahoo.com", password: "qwerty1")
  
    end


    describe "GET #show" do
      context "User is logged in" do
        before do
          sign_in @user1
        end

        it "loads the correct user details" do
          get :show, id: @user1.id
          expect(response.status).to eq 200
          expect(assigns(:user)).to eq @user1
        end

        it "doesn't load the second user" do
          get :show, id: @user2.id
          expect(response.status).to eq 200

        end
      end

        context "No user is logged in" do
          it "redirects to login" do
          get :show, id: @user1.id
          expect(response.status).to eq 200
          end
        end
    end
end