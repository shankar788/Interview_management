class UserMailer < ApplicationMailer
  #
  def interview_mail
    mail(to:"shankar@webkorps.com",subject:"This is webkorps maile")
  end
end
