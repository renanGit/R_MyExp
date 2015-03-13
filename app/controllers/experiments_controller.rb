class ExperimentsController < ApplicationController
    before_action :signed_in_user, only: [:index, :edit, :create, :destroy, :show]
    
    def index
        
    end

    def home
    	if signed_in?
      		@experiment = Experiment.select("id, created_at").where(user_id: current_user.id.to_i).paginate(page: params[:page], per_page: 10)
      		@count = Experiment.where(user_id: current_user.id.to_i).count
      	end
    end

    def show
        
    end

    def create
        
    end

    def destroy
	@model = Experiment.select("id").where(id: params[:id].to_i, user_id: current_user.id.to_i)
  	
  	if @model.present? and @model.count == 1
  		@model.first.destroy
  	end
  	redirect_to root_path
    end

end
