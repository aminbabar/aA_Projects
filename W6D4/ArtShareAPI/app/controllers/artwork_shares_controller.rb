class ArtworkSharesController < ApplicationController

    def create
        @artwork_shares = ArtworkShare.new(params.require(:artwork_share).permit(:artwork_id, :viewer_id))
        if @artwork_shares.save
            render json: @artwork_shares
        else
            render json: @artwork_shares.errors.full_messages, status: 422
        end
    end

    def destroy
        @artwork_share = ArtworkShare.find(params[:id])
        @artwork_share.destroy
        render json: @artwork_share
    end

end