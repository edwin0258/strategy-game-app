class User < ActiveRecord::Base
	has_many :clans
	has_many :resources
	has_many :purchases

	has_many :active_relationships, class_name: "Relationship",
									foreign_key: "member_id",
									dependent: :destroy

	has_many :memberships, through: :active_relationships, source: :clan
	def join(clan)
		active_relationships.create(clan_id: clan.id)
	end
	def unjoin(user, clan)
		active_relationships.find_by(member: user.id, clan: clan.id).destroy
	end
	def member?(clan)
		memberships.include?(clan)
	end
	has_secure_password
end