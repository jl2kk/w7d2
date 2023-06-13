class SessionsController < ApplicationController

    def new 
        render :new 
    end 


    def create 
        email = params[:user][:email]
        pass = params[:user][:password]
        @user = User.find_by_credentials(email,pass)
        if @user 
            @user.save 
            login(@user)
        else 
            render :new 
        end 
    end 

    def destory
        logout! 
    end 



end 