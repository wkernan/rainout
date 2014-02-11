class Facility < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates :status, presence: true
end
