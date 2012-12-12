class UserMailer < ActionMailer::Base
  default from: "from@example.com" #set this as our email address

  def welcome_email(user)
  	@user = user
  	email_with_name = "#{@user.name} #{@user.email}"
  	@url = #the heroku address
  	@message.html_safe
  	mail(:to => email_with_name, :subject => "Welcome to Play With Us")
  end


end
