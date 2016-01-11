class ShopsController < ApplicationController
  respond_to :html, :json

  def index
    @total = Shop.count
    @shops = Shop.all
    # @avgs = Shopreview.group(:shop_id).count
    # @shops = Shop.joins(
    #	    'LEFT OUTER JOIN ? ON shops.id = shopreviews.shop_id', @avgs
    # ).group(:id).select(:id)
  end

  def show
    @shop = Shop.find(params[:id])
    @designers = Designer.where(shop_id: @shop.id)
    @shopreviews = Shopreview.where(shop_id: @shop.id)
  end
end
