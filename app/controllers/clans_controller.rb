class ClansController < ApplicationController
	def new
		@clan = Clan.new
	end
	def index
		@clans = Clan.all
	end
	def show
		@clan = Clan.find(params[:id])
	end
	def create
		@clan = Clan.new(clan_params)
		@clan.user = User.find(current_user)
		if @clan.save
			redirect_to clans_path
		else
			render 'new'
		end
	end

	private
		def clan_params
			params.require(:clan).permit(:name,:description,:user_id)
		end
end