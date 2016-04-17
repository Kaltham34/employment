class Job < ActiveRecord::Base
	belongs_to :user
	belongs_to :type
	validates :name, :overview, :type_id, :user_id, presence: true, uniqueness:{ case_sensitive: false}
    scope :open, -> { where("filled=?", "false") }
end
