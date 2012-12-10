class UserMailer < ActionMailer::Base
  
  default from: "kevinryantao@gmail.com"
  
  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.name} <#{@user.email}>"
    @url = "http://default.com/login"
    mail(:to => email_with_name, :subject => "welcome to Our Awesome Site")
  end
end


 # class MyMailer < ActionMailer::Base
 #     def signup_notification(recipient)
 #       recipients recipient.email_address_with_name
 #       subject    "New account information"
 #       body       "account" => recipient
 #       from       "system@example.com"
 #       content_type "text/html"   #Here's where the magic happens
 #     end
 #   end