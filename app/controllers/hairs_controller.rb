class HairsController < ApplicationController
  before_action :set_hair, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @hairs = Hair.all
    respond_with(@hairs)
  end

  def show
    respond_with(@hair)
  end

  def new
    @hair = Hair.new
    respond_with(@hair)
  end

  def edit
  end

  def create
    @hair = Hair.new(hair_params)
    if params[:images]
      params[:images].each do |image|
        @hi = @hair.hairimages.new(image: image)
        @hi.save!
      end
    end
    @hair.save
    respond_with(@hair)
  end

  def update
    @hair.update(hair_params)
    if params[:images]
      params[:images].each do |image|
        @hi = @hair.hairimages.new(image: image)
        puts @hi
        @hi.save!
      end
    end
    respond_with(@hair)
  end

  def destroy
    @hair.destroy
    respond_with(@hair)
  end

  private

  def set_hair
    @hair = Hair.find(params[:id])
  end

  def hair_params
    params.require(:hair).permit(
      :designer_id, :mainregion_id, :subregion_id,
      :haircategorycode_id, :haircategory_id,
      :title, :subtitle, :detail, :image
    )
  end
end
