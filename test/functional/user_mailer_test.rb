require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  def test_welcome_email
    user = User.new
    user.email = "gesarlhamo80@gmail.com"
    
        email = UserMailer.welcome_email(user).deliver
        assert !ActionMailer::Base.deliveries.empty?

        #Test the body of the sent email contains what we expect it to
        assert_equal [user.email], email.to
        assert_equal "welcome to Our Awesome Site", email.subject    
        assert_equal ["kevinryantao@gmail.com"], email.from    
        assert_match(/<h1>Welcome to example.com, #{user.name}<\/h1>/, email.encoded)
        assert_match(/Welcome to example.com, #{user.name}/, email.encoded)
        
   	 	
  end
   	 	
  end
