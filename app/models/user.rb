class User < ActiveRecord::Base
	has_many :clans
	has_many :resources
	has_many :purchases
	has_secure_password
end