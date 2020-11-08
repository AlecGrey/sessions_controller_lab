class SessionsController < ApplicationController

    def new
    end

    def create
        # byebug
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            flash[:success] = "You have successfully logged in!"
            redirect_to root_path
        else
            flash[:error] = "Please enter a valid username"
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:name)
        redirect_to root_path
    end

end