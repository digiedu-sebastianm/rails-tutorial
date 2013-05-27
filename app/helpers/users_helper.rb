module UsersHelper
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "http://www.linuxcandy.com/wp-content/uploads/2012/02/rails-tutorial-logo-2-300x251.png"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end