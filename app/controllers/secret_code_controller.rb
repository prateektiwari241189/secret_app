class SecretCodeController < ApplicationController
	def index
    	@secret_codes = SecretCode.includes(:user).all
	end

	def create
		strong_params = secret_code_params
		SecretCode.create_codes strong_params[:count].to_i
		flash[:now] = strong_params[:count]+" secret code created successfully"
		redirect_back(fallback_location: root_path)
	end	

	private
	
	def secret_code_params
    	params.permit(:count)
 	end
end
