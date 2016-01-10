class DesignersController < ApplicationController
  respond_to :html, :json

  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
  end
end
