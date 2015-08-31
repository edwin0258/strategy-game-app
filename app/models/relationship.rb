class Relationship < ActiveRecord::Base
	belongs_to :member, class_name: "User"
	belongs_to :clan, class_name: "Clan"
end