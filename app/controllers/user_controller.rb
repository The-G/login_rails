class UserController < ApplicationController
    def index
        @user = User.all
        if session[:user_id] 
            @email = User.find(session[:user_id]).email
        end
    end
    
    def new
    
    end
    
    def create
        require 'digest'
        @email = params[:email]
        @password = params[:password]
        hidden_password = Digest::MD5.hexdigest(@password)
        
        User.create(
            email: @email,
            password: hidden_password
        )
    end
   
    def modify
        id = params[:id]
        @user = User.find(id)
    end
    
    def update
        id = params[:id]
        @email = params[:email]
        @password = params[:password]
        
        User.find(id).update(
            email: @email,
            password: @password
        )
        redirect_to '/'
    end
    
    def destroy
        id = params[:id]
        User.find(id).destroy
        
        redirect_to '/'
    end
    
    def login
        
    end
    
    def login_action
        require 'digest'
        if User.exists?(email: params[:email])
            user = User.find_by(email: params[:email])
            if user.password == Digest::MD5.hexdigest(params[:password])
                session[:user_id] = user.id 
                redirect_to '/'
            end
        end
    end
 
end
