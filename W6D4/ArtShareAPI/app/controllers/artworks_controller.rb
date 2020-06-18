class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.all
        render json: @artworks
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

                    #Why an if/else, etc, for some but not others?
    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        render json: @artwork
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

end

# How do we dynamically program in postman. 
# why user[1] in postman?
# how do we look at an artists artworks in postman.
