class AdminSignupController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      session[:admin_id] = @admin.id
      flash[:success] = "Sign up successful!"
      redirect_to admin_dashboard_path
    else
      flash.now[:notice] = "Error occurred during signup process."
      render :new
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:username, :password)
  end

end
