class Number < ActiveRecord::Base
	belongs_to :user
	has_many :facilities
end
