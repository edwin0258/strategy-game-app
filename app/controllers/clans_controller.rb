class ClansController < ApplicationController
	def new
		@clan = Clan.new
	end
	def index
		@clans = Clan.all
	end
	def show
		@clan = Clan.find(params[:id])
		@relationships = @clan.passive_relationships
	end
	def create
		@clan = Clan.new(clan_params)
		@clan.user = User.find(current_user)
		@clan.power = 50
		if @clan.save
			redirect_to clans_path
		else
			render 'new'
		end
	end
	def attack
		user = User.find(current_user.id)
		@clan = Clan.find(params[:id])
		@clan.power = (@clan.power -= user.attack if user.attack)
		if @clan.save && @clan.power > 0
			redirect_to :back
		else
			@clan.destroy
			redirect_to clans_path
		end
	end


	private
		def clan_params
			params.require(:clan).permit(:name,:description,:user_id, :power)
		end
end