class User < ActiveRecord::Base
  #include user roles management
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role

  ROLES = %w[admin doctor nurse fisio secretary]
	def is?(role)
	  roles.include?(role.to_s)
	end
	
  # attr_accessible :title, :body
  has_many :patients

end