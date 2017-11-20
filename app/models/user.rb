class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_one :secret_code
  		has_many :user_role_map, :primary_key => :id, :foreign_key => "user_id"
  		has_many :role, :through => :user_role_map

		  def self.current_user
		    Thread.current[:current_user]
		  end

		  def self.current_user= user
		    Thread.current[:current_user] = user
		  end
end
