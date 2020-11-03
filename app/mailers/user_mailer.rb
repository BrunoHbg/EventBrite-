class UserMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'

	def welcome_email(user)
		@user = user 
		@url =''
		mail(to: @user.email, subject: 'Bienvenue sur Eventbrite !')
	end
end
