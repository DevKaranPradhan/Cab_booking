class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    @error = params[:id]
  end

  def create
    
    @user = User.find_by(email: params[:email])   
    
    # puts "#{params["email"]}#samdand,nasdna,msdn,n, --------------------- #{@user.first_name}"

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id      
      redirect_to '/welcome'   
    else   
      error = "Invalid credentials"   
      redirect_to login_path(id:error)
    end

  end

  def login
    
  end

  def welcome

  end

  def destroy      
    
    if session[:user_id] == nil
      redirect_to '/logout' 
    else
      session[:user_id] = nil
      redirect_to '/welcome'
    end

  end
  
  def page_requires_login
  
  end

end
