class WelcomeMailer < ActionMailer::Base
  default from: "robot@fightcard.com"

  def signup(user)
    @user = user
    mail to: user.email subject: "Welcome to FightCard!"

  def signup(admin)
    @admin = admin
    mail to: admin.email subject: "Welcome FightCard!" 
  end


end
