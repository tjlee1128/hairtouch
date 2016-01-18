class ShopsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :html, :json
  before_action :set_shop, only: [:show, :edit, :update, :destory]

  # GET /shops
  # GET /shops.json
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

  # GET /shops/1
  # GET /shops/1.json
  def show
    @shop = Shop.find(params[:id])
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)
  end

  def not_found
    head status: :not_found
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:shopowner_id, :name)
  end
end
