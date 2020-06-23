class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:session][:user_name], params[:session][:password])
        if @user != nil
            session[:session_token] = @user.reset_session_token!
            redirect_to cats_url
        else
            flash.now[:errors] = ['Invalid Password or Username']
            render :new
        end
    end

    def destroy
        debugger
        session[:session_token] = nil
        current_user.reset_session_token!
        @current_user = nil
        redirect_to new_session_url
    end
end


# def logout!
# 			current_user.reset_session_token!
# 			session[:session_token] = nil # `session` is method that returns a hash-like object
#             @current_user = nil
#             redirect_to new_session_url
# 		end