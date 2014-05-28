class Number < ActiveRecord::Base
	attr_accessor :stripe_card_token
	belongs_to :user
	has_many :facilities

	validates :number, presence: true

	def save_with_payment
		if valid?
			customer = Stripe::Customer.create(card: stripe_card_token)
			self.stripe_customer_token = customer.id
			save!
		end
	rescue Stripe::InvalidRequestError => e
		logger.error "Stripe error while creating customer: #{e.message}"
		errors.add :base, "There was a problem with your credit card."
		false
	end
end
