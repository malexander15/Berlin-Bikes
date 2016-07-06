class UserMailer < ApplicationMailer
    default from: "creepinjezus15@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'creepinjezus15@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
