class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Sign up successful! Please configure your account preferences."
      redirect_to my_account_path
    else
      flash[:notice] = "Error occurred during signup process."
      flash[:additional_notice] = "Please make sure your username & email are unique and your password is at least 8 characters."
      redirect_to sign_up_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def change_info
    @field = params[:field]
    @user_id = params[:user_id]
    @user = User.find(@user_id)
    render 'change-info'
  end

  def modify_info
    @field = params[:field]
    @user_id = params[:user_id]
    @user = User.find(@user_id)

    new_value = params[:modify_info][:new_value]

    @user.send("#{@field}=", new_value)

    if @user.save
      redirect_to my_account_path, success: "User information updated successfully."
    else
      flash[:notice] = "Error modifying. The new #{@field} may already be in use."
      redirect_to change_info_path(field: @field, user_id: @user_id)
    end

  end

  def modify_preferences
    @user_id = params[:modify_preferences][:user_id]
    @user = User.find(@user_id)

    preferences_params.each do |preference, value|
      @user.update_attribute(preference, value)
    end

    if @user.save
      redirect_to my_account_path, success: "Dietary preferences updated successfully."
    else
      flash[:alert] = "Error updating dietary preferences."
      render 'change-preferences'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def preferences_params
    params.require(:modify_preferences).permit(
      :gluten_intolerance, :vegan, :vegetarian,
      :nut_allergy, :fish_allergy,
      :egg_allergy, :soy_allergy, :dairy_allergy,
      :kosher, :halal
    )
  end


end
