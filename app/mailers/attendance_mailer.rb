class AttendanceMailer < ApplicationMailer
	defaut from: 'no-reply@monsite.fr'

	def attendee_email(attendance)
		@attendance = attendance
		@user = User.find(@attendance.user_id)
		@url = ''
		mail(to: @user.email, subject: 'Participation confirmée à'+ @attendance.event.title)
		
	end
end
