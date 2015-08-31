class User < ActiveRecord::Base
	has_many :clans
	has_secure_password
end