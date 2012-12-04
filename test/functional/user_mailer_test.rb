require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  def test_welcome_email
    user = users (:some_user_in_your_fixtures)


   	 	
eamils = UserMailer.welcome_email(user).deliver
   	
      
      assert !ActionMailer::Base.deliveries.empty?
      assert_equal "Welcome", mail.subject
   	 	
    assert_equal ["to@example.org"], mail.to
   	 	
    assert_equal ["from@example.com"], mail.from
   		
  assert_match "Hi", mail.body.encoded
   	 	
  end
   	 	
  
   	 	
  end
  # test "the truth" do
  #   assert true
  # end
end
