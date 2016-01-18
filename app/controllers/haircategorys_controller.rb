class HaircategorysController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :html, :json

  def index
    @haircategories = Haircategory.all
    @code = params[:code]

    if params.key?(:code)
      @haircategories = @haircategories.where(haircategorycode: @code)
    else
      @haircategories = Haircategory.all
    end
  end

  def not_found
    head status: :not_found
  end
end
