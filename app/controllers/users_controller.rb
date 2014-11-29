class UsersController < ApplicationController

   def new
     @user = User.new
   end

   def create
     @user = User.new(params(:user).require(:email, :password, :password_confirmation))
     if @user.save
       sign_in @user

       WelcomeMailer.signup(@user).deliver

       redirect_to_root_path, message: "#{user.email}, you have successfull signed up for FightCard"
     else
       render :new
     end
   end

end
