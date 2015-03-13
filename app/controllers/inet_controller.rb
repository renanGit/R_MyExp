class InetController < ApplicationController

	def index
		@form_type = params[:form_type].to_i
	end
	
	def create
		@all_params = params[:inet]
	end

end
