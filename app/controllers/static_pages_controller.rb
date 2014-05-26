class StaticPagesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def home
  end

  def company
  end

  def blog
  end

  def contact_us
  end

  def search_numbers
  end

  def saved_number
  end
end
