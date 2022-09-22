module Api
  module V1
    module Users
      class UsersController < ApplicationController
        def index
          @users = User.all
          render json: @users
        end
        
        def update
          @user = User.find(params[:id])
            if @user.update(user_params)
              render json: {
                message: "Update Successfully"
              }
            else
              render json:{
                message: "Failed",
                validation: @user.errors.messages
              }, status: 400
            end
        end
      

        private
          def user_params
            params.permit(:email, :password)
          end

          def user_paramss
            params.permit(:current_password, :password, :confirmation_password)
          end
          
      end
    end
  end
end

