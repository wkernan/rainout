Rails.configuration.stripe = {
	:publishable_key => 'pk_test_ilksmSrzDggNqHOYxfbAWUet',
	:secret_key => 'sk_test_L6DrE1mVMbXg3wyHNIBLacDR'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]