class ShopsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :html, :json

  def index
    @shops = Shop.all
    @mainregion = params[:mainregion]
    @subregion = params[:subregion]
    if params.key?(:mainregion)
      @shops = @shops.where(mainregion: @mainregion)
    elsif params.key?(:subregion)
      @shops = @shops.where(subregion: @subregion)
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def not_found
    head status: :not_found
  end
end
