class WelcomeMailer < ActionMailer::Base
  default from: "robot@fightcard.com"

  def signup(user)
    @user = user
    mail to: user.email, subject: "Welcome to FightCard!"    
  end

  def signup(admin)
    @admin = admin
    mail to: admin.email, subject: "Welcome FightCard!"
  end


end
