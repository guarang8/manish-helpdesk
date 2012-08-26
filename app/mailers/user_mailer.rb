class UserMailer < ActionMailer::Base
  default from: "your-email-address-here"
  def add_ticket(user)
  	@user = user
  	mail(:to => user.email,:subject => "A new ticket has been created")
  end
end
