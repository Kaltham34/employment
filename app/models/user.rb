class User < ActiveRecord::Base
  	belongs_to :role
  	has_many :jobs
        validates :email, uniqueness: true
 	validates :name, :email, :password, :role_id, presence: true
 	 
 


   
end
