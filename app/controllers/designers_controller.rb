class DesignersController < ApplicationController
  respond_to :html, :json
  before_action :set_designer, only: [:show, :edit, :update, :destory]

  # GET /designers
  # GET /designers.json
  def index
    @designers = Designer.all
  end

  # GET /designers/1
  # GET /designers/1.json
  def show
    @designer = Designer.find(params[:id])
  end

  # GET /designers/new
  def new
    @designer = Designer.new
  end

  # GET /designers/1/edit
  def edit
  end

  # POST /designers
  # POST /designers.json
  def create
    @designer = Designer.new(designer_params)
    @designer.save
    respond_with(@designer)
  end

  # PATCH/PUT /designers/1
  # PATCH/PUT /designers/1.json
  def update
    @designer.update(designer_params)
    respond_with(@designer)
  end

  # DELETE /designers/1
  # DELETE /designers/1.json
  def destroy
    @designer.destroy
    respond_with(@designer)
  end

  def not_found
    head status: :not_found
  end

  private

  def set_designer
    @designer = Designer.find(params[:id])
  end

  def designer_params
    params.require(:designer).permit(
      :shop_id, :name, :phone, :start_time,
      :end_time, :reservation_type, :main_image,
      :mainregion_id, :subregion_id, :image
    )
  end
end
