class Resource < ActiveRecord::Base
	belongs_to :user
	has_many :purchases
end