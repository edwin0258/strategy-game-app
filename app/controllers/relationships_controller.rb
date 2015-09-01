class RelationshipsController < ApplicationController
	def create
		clan = Clan.find(params[:clan_id])
		current_user.join(clan)
		redirect_to :back
	end
	def destroy
		user = Relationship.find_by(params[:id]).member
		clan = Relationship.find(params[:id]).clan
		current_user.unjoin(user, clan)
		redirect_to :back
	end

end