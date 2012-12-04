class UserMailer < ActionMailer::Base
  
  default from:"from@default.com"
  
  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.name} <#{@user.email}>"
    # @url = "http://default.com/login"
    mail(:to => email_with_name, :subject => "welcome to Our Awesome Site")
  end
end

