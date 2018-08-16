class LooksController < ApplicationController
     def create
        @look = Look.new(look_params)
        if @look.save
            render json: @look, status: :accepted
        else
            render json: {errors: @look.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def look_params
        params.permit(:title, :lookURL, :user_id)
    end
end
