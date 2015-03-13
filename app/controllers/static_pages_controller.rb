class StaticPagesController < ApplicationController
  before_action :signed_in_user, only: [:edit,:show,:destroy]

  def index
  end

  def edit
  end
  
  def show
  end
  
  def destroy
  end

  def help
  end

  def about
  end
end
