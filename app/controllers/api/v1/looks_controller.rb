class Api::V1::LooksController < ApplicationController
    
    before_action :get_look, only: [:show, :destroy]

    def index
        @looks = Look.all
        render json: @looks
    end

    def show
        render json: @look
    end
    
    def create
        @look = Look.new(look_params)
        if @look.save
            render json: @look, status: :accepted
        else
            render json: {errors: @look.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        # byebug
        @look.delete
    end

    private


    def look_params
        params.permit(:title, :lookURL, :user_id)
    end

     def get_look
        @look = Look.find(params[:id])
    end
end
