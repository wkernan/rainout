class Number < ActiveRecord::Base
	belongs_to :user
	has_many :facilities

	validates :number, presence: true
end
