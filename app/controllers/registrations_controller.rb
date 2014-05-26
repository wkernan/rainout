class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(resource)
		search_numbers_path
	end
end