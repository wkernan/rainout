class AddStripeToNumbers < ActiveRecord::Migration
  def change
    add_column :numbers, :stripe_customer_token, :string
  end
end
