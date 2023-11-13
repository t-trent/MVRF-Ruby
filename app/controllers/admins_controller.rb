class AdminsController < ApplicationController
  def new
  end

  def create
    @admin = Admin.find_by(username: params[:username])
    if @admin && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      flash[:success] = "Logged in succesfully"
      redirect_to admin_dashboard_path
    else
      flash[:alert] = "Invalid email or password"
      redirect_to '/admin-login'
    end
  end

  def destroy
    flash[:success] = "Logged out of account."
    admin_log_out
    redirect_to '/admin-login'
  end
end
