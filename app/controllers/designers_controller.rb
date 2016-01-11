class DesignersController < ApplicationController
  respond_to :html, :json

  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
  end

  def not_found
    head status: :not_found
  end
end
