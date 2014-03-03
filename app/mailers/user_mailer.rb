class UserMailer < ActionMailer::Base
  default from: 'mbull959@gmail.com'

  layout 'mail'

  def signup_confirmation(user)
    @user = user
    #@url = 'localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to Living Bull')
  end

  def receive(email)
    #TODO: complete
  end

end
