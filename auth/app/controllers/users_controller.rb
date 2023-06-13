
class UsersContoller < ApplicationController

    def new
        render :new 
    end 

    def create 
        @user = User.new(user_params)
        if @user
            @user.save
            login!(@user)
        end 

    end 


    def user_params 
        params.require(:user).permit(:email,:password)


end 