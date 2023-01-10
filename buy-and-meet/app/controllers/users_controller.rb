class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            render 'api/users/show'
        else
            render json: @user.error.full_messages, status:422
        end
    end

    def index
      @users = User.all
    end
    
    def destroy
      @user = User.find(params[:id])

      if @user.destroy
         render 
      else 
         render json: ["user was not deleted"], status: 401
      end
    end

    private
 
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end 
end


