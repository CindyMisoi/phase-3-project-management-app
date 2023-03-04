class User < ActiveRecord::Base
    has_many :members
    has_many :projects, through: :members

    # # authentification
    # has_secure_password

    # validates :username, :presence => true, :uniqueness => true
    # validates :password, :presence => true
    
end