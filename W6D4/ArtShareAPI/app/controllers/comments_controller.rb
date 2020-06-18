class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: @comment
    end

    def index
        if params[:user_id]
            @comments = Comment.where("comment.artist_id = ? ", params[:user_id])
        elsif params[:artwork_id]
            @comments = Comment.where("comment.artwork_id = ? ", params[:artwork_id])
        else
            @comments = Comment.all
        end
        render json: @comments
    end

    private
    def comment_params
        params.require(:comment).permit(:artist_id, :artwork_id, :body)
    end
    
end