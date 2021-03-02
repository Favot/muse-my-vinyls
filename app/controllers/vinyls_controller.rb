class VinylsController < ApplicationController
  def show
    @vinyl = Vinyl.find(params[:id])
  end

  def create

  end
end
