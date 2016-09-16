class PropertiesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@properties = Property.all
	end

	def new
		@property = current_user.properties.build
	end

	def create 
		@property = current_user.properties.build(property_params)
	end

	def edit

	end

	def update 

	end 

	def destroy

	end

private
	def property_params
		params.require(:property).permit(:street_address, :street_address_2, :city, :state, :county, :country, :property_type, :off_market, :finished_sq_ft, :condition, :deal_type, :asking_price, :negotiable, :ideal_financing_method, :financial_summary, :projected_profit, :property_access, :additional_details, :preferred_contact_detaiils, :also_listed_on, :direct_to_owner, :user_id)
	end

end
