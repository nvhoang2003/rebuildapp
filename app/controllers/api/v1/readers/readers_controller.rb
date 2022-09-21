module Api
  module V1
    module Readers
      class ReadersController < ApplicationController
        def create
          @reader = Reader.new(reader_params)
          if @reader.save
            ActiveMailer.active_signin(@reader).deliver_now
            render json: {
              message: "Wait email message"
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
