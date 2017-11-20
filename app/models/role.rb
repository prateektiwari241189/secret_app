class Role < ApplicationRecord
	has_many :user_role_map
  	has_many :user, :through => :user_role_map
end
