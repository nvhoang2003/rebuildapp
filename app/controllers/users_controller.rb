require 'json_web_token'

class UsersController < ApplicationController
  def sign_up
    @user = User.new(user_params)
    if @user.save
      render json: {
        message: 'success'
          token: JsonWebToken.encode({
          sub: @user.id
        })
      } 
    else
      render json:{
        message: "unsucess"
      }
    end
  end

  def sign_in
    @user = User.find_by( email: params[:email])
    if @user && @user.valid_password?(params[:password])
      render json: {
        message: 'sucesss',
        token: JsonWebToken.encode({
                                     sub: @user.id
                                   })
      }
    else
      render json: {
        message: 'failed'
      }, status: 400
    end
  end

  private
    def user_params
      params.permit(:email, :password)
    end

    
end