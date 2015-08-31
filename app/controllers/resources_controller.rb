class ResourcesController < ApplicationController
	def index
		@resources = Resource.all
	end
	def show
		@resource = Resource.find(params[:id])
	end
	def purchase
		@resource = Resource.find(params[:id])
		@user = User.find(current_user)
		purchase = Purchase.create(user: @user, resource: @resource)
		if purchase.valid?
			redirect_to :back
		else
			#do something else
		end
	end
	def create
		@resource = Resouce.new(resource_params)
		if @resource.save
			redirect_to user_path(current_user)
		else
			redirect_to :back
		end
	end

	private
		def resource_params
			params.require(:resource).permit(:name,:description, :price, :user_id)
		end
end