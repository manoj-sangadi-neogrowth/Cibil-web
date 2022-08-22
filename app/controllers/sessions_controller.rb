class SessionsController < ApplicationController

    def new 
    end

    def create 
        #user = User.find_by(email: params[:email])

        # if(user.present? && user.authenticate(params[:password]))
        #     session[:user_id] = user.id 
        #     flash[:notice] = "Logged in successfully"
        #     redirect_to user
        # else
        #     flash.now[:alert] = "Invalid credentials"
        #     render 'new'
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to :controller => 'applicants', :action => 'index'
        else 
            flash[:alert] = 'Invalid email or password'
            render :new
        end

    end

    def destroy

    end

end