module Api
  module V1
    module Users
      class UsersController < ApplicationController
        def create
          @user = User.new(user_params)
          if @user.save
            render json: {
              message: 'success',
                token: ::JsonWebToken.encode({
                                              sub: @user.id
              })
            } 
          else
            render json:{
              message: "unsucess"
            }, status: 400
          end
        end

        private
          def user_params
            params.permit(:email, :password)
          end    
      end
    end
  end
end

