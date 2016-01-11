class ShopsController < ApplicationController
  respond_to :html, :json

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @designers = Designer.where(shop_id: @shop.id)
    @shopreviews = Shopreview.where(shop_id: @shop.id)
  end
end
