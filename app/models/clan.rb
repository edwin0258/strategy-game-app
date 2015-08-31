class Clan < ActiveRecord::Base
	belongs_to :user
	has_many :passive_relationships, class_name: "Relationship",
									 foreign_key: "clan_id",
									 dependent: :destroy
	has_many :members, through: :passive_relationships, source: :member
end