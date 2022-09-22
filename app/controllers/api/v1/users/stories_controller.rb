module Api
  module V1
    module Users
      class StoriesController < ApplicationController
        def create
          @story = Story.new(story_params)
          @story.image.attach(params[:story][:image])
          if @story.save
            render json: {
              message: "success"
            }
          else
            render json: {
              message: "failed",
              validation: @story.errors.messages
            }, status: 400
          end
        end

        def index
          @stories = Story.all
          render json: @stories
        end

        def edit
          @story = Story.find(params[:id])
          render json: @story
        end
        
        def update
          @story = Story.find(params[:id])
            if @story.update(story_params)
              render json: "Update Successfully"
            else
              render json:{
                message: "Failed",
                validation: @story.errors.messages
              }, status: 400
            end
        end
        
        def destroy
          @story = Story.find(params[:id])
          if @story.destroy
            render json: {
              message: "destroy successfuly"
            }
          else
            render json: {
              message: "destroy failed"
            }, status: 400
          end
        end
        

        private
          def story_params
            params.permit(:name, :author_id)
          end
      end
    end
  end
end