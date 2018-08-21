class Api::V1::LinksController < ApplicationController

    def create
        @link = Link.new(link_params)
        if @link.save
            render json: @link, status: :accepted
        else
            render json: {errors: @link.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        @link = Link.find(params[:id])
        @link.delete
    end

    private


    def link_params
        params.permit(:article, :linkURL, :look_id)
    end
end
