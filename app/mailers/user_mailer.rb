class UserMailer < ActionMailer::Base
  default from: "manish.gauranga@gmail.com"
  def add_ticket(user)
  	@user = user
  	mail(:to => user.email,:subject => "A new ticket has been created")
  end
end
