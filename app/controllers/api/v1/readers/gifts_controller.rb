module Api
  module V1
    module Readers
      class GiftsController < ApplicationController
        def index
          @gifts = Gift.all
          render json: @gifts
        end
      end 
    end
  end
end