class Facility < ActiveRecord::Base
	belongs_to :user
	belongs_to :number

	validates :name, presence: true
	validates :status, presence: true
	validates :hotline, presence: true
end
