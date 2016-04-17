class User < ActiveRecord::Base
	belongs_to :role
	has_many :jobs
	before_save { self.email = email.downcase }
	validates :name,:email,:password,:role_id,presence: true
	validates :email, uniqueness:{ case_sensitive: false}


   
end
