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

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'Shop was created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'Shop was updated.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url, notice: 'Shop was destroyed.' }
      format.json { head :no_content }
    end
  end

  def not_found
    head status: :not_found
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(
      :shopowner_id, :name, :phone, :start_time,
      :end_time, :holiday, :address, :main_image,
      :mainregion_id, :subregion_id, :image
    )
  end
end
