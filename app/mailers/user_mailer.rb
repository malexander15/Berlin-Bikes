class UserMailer < ApplicationMailer
    default from: "creepinjezus15@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'creepinjezus15@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
  
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def purchase(user)
  @message = message
    mail( :to => @user.email,
      :subject => "A new order confirmation message from #{name}")
  end


end
