module Api
  module V1
    module Readers
      class SessionsController < ApplicationController
        def create
          reader = Reader.find_by(email: params[:email])
          if reader && reader.valid_password?(params[:password])
            render json: {
              message: "success",
              token: ::JsonWebToken.encode({
                                            sub: reader.id
              })
            }
          else
            render json: {
              message: "failed"
            }, status: 400
          end
        end
      end
    end
  end
end