class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
            # redirect_to user_url(@user.id)
        else
            # render json: @user.errors.full_messages
            render json: @user.errors.full_messages, status: 422
        end
    end

    def user_params
        params.require(:user).permit(:name, :email) 
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
            # redirect_to user_url(@user.id)
        else
            # render json: @user.errors.full_messages
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    
end
