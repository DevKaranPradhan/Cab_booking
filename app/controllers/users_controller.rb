class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def index
    @all_users = User.all
  end

  def new
    
  end

  def create
    @user = User.create(first_name: params["first_name"], last_name: params["last_name"], contact_number: params["contact_number"], email: params["email"], password: params["password"])
    session[:user_id] = @user.id
    
    redirect_to '/welcome'#rides_path
  
  end 

end
