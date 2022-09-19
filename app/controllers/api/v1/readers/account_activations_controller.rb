module Api
  module V1
    module Readers
      class AccountActivationsController < ApplicationController
        def edit
          reader = Reader.find_by(email: params[:email])
          if reader && !reader.activated? 
            reader.update_attribute(:activated,true)
            reader.update_attribute(:activated_at, Time.zone.now)
            render json: {
              message: "ok"
            }
          else
            render json: {
              message: "cc"
            }
          end
          end
      end
    end
  end
end

