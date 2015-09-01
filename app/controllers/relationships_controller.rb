class RelationshipsController < ApplicationController
	def create
		clan = Clan.find(params[:clan_id])
		current_user.join(clan)
		redirect_to :back
	end
	def destroy
		clan = Relationship.find(params[:id]).clan
		current_user.unjoin(clan)
		redirect_to :back
	end

end