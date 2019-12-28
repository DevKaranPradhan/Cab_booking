class SessionsController < ApplicationController
  def new
  
  end

  def create
    
    @user = User.find_by(email: params[:email])   
    
    puts "#{params["email"]}#samdand,nasdna,msdn,n, --------------------- #{@user.first_name}"

    if @user && @user.password == (params[:password])      
      session[:user_id] = @user.id      
      redirect_to '/welcome'   
    else      
      redirect_to '/login'   
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
end
