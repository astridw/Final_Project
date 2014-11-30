class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params(:user).require(:email, :password, :password_confirmation))
    if @admin.save
      sign_in @admin

      WelcomeMailer.signup(@admin).deliver

      redirect_to_root_path, message: "#{user.email}, you have successfull signed up for FightCard"
    else
      render :new
    end
  end
end
