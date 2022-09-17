module Api
  module V1
    module Users
      class SessionsController < ApplicationController
        def create
          @user = User.find_by( email: params[:email])
          if @user && @user.valid_password?(params[:password])
            render json: {
              message: 'sucesss',
              token: ::JsonWebToken.encode({
                                           sub: @user.id
                                         })
            }
          else
            render json: {
              message: 'failed',
              validate: "Password Or Username failed."
            }, status: 400
          end
        end
      
      end
    end
  end
end