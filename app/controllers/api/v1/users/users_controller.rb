module Api
  module V1
    module Users
      class UsersController < ApplicationController
        def index
          @users = User.all
          render json: @users
        end
                
        private
          def user_params
            params.permit(:email, :password)
          end
          
      end
    end
  end
end

