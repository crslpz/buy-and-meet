class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )
        if @user
            login!(user)
            render 'api/user/show'
        else
            render json: ['Invalid email and password cobination'], status: 422
        end
    end


    def destroy
      @user = current_user
      if @user
         logout
         render json: {}
      else
         render json: ["Not Signed in"], status: 404
      end
   end
end
