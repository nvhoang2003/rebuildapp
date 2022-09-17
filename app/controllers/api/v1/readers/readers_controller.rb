module Api
  module V1
    module Readers
      class ReadersController < ApplicationController
        def create
          @reader = Reader.create(reader_params)
          if @reader.create
            render json: {
              message: "success"
              # ,
              # token: ::JsonWebToken.encode({
              #                               sub: @reader.id
              # })
            }
          else 
            render json: {
              message: "failed",
              validation: @reader.errors.messages
            }, status: 400 
          end
        end

        private 
          def reader_params
            params.permit(:name, :email, :password, :age, :gender, :phonenumber, :address)
          end
      end
    end
  end
end
