class PropertiesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@properties = Property.all
	end

	def new
		# @property = current_user.property.build(property_params)

	end

	def create 

	end

	def edit

	end

	def update 

	end 

	def destroy

	end

private
	def property_params

	end


end
