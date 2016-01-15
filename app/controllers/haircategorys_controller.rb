class HaircategorysController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :html, :json

  def index
    @haircategories = Haircategory.all
  end

  def not_found
    head status: :not_found
  end
end
