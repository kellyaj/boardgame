module FormHelper

	def setup_user(user)
		user.collections ||= Collection.new
		user
	end

end