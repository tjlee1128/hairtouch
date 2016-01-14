class RegionsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :html, :json

  def index
    @mainregions = Mainregion.all
    @subregions = Subregion.all
  end

  def not_found
    head status: :not_found
  end
end
