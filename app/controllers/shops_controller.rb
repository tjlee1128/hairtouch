class ShopsController < ApplicationController
  respond_to :html, :json

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
