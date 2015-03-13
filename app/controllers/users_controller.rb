class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def index
      @users = User.paginate(page: params[:page])
  end

  def show
      @user = User.find(params[:id])
  end

  def create
      @captcha_message = "CAPTCHA Incorrect"
      @user = User.new(user_params) 
      if verify_recaptcha(model: @user, message: @captcha_message) || @user.save
          sign_in @user
          flash[:success] = "Welcome to MyExperiment!"
          redirect_to root_path          
      else
          render 'new'
      end
  end

  def new
      @user = User.new
  end

  def edit
  end
  
  def models
  end

  def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
          flash[:success] = "Profile updated"
          redirect_to root_path 
      else
          render 'edit'
      end
  end

  private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #def signed_in_user
    #    unless signed_in?
    #        store_location
    #        redirect_to signin_url, notice: "Please sign in."
    #    end
    #end

    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?(@user)
    end
end
