class UserController < ApplicationController
  

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    UserMailer.registration_confirmation(@user).deliver
    redirect_to log_in_path , :notice  => "You have Signed up.Please Login."
  else
    render "new"
  end
end


end
