class UserController < ApplicationController
    def index
        @user = User.all
    end
    
    def new
    
    end
    
    def create
        @email = params[:email]
        @password = params[:password]
        
        User.create(
            email: @email,
            password: @password
        )
        redirect_to '/'
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
 
end