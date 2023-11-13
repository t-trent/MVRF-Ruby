class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])

        if !! @user && User.find_by(password: params[:password])
            if @user.banned?
                flash[:alert] = "Your account has been banned."
                flash[:additional_alert] = "Please contact Site Administrator for more detail."
                redirect_to login_path
            else
                session[:user_id] = @user.id
                flash[:success] = "Logged in successfully."
                redirect_to my_account_path
            end
        else
            flash[:notice] = "Error: Invalid Credentials."
            flash[:additional_notice] = "Please make sure your credentials are correct."
            redirect_to login_path
        end
    end

    def destroy
        flash[:success] = "Logged out of account. Hope to see you again!"
        session.clear
        redirect_to login_path
    end


end
