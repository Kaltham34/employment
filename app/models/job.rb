class Job < ActiveRecord::Base
  	belongs_to :type
  	belongs_to :users
  	validates :filled, default: false
  	validates :name, :overview, :type_id, :user_id, presence: true
 	scope :open, -> {where("filled=?", "false")}
end
