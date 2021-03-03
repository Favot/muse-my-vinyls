class VinylsController < ApplicationController

  def show
    @vinyl = Vinyl.find(params[:id])
    @renting = Renting.new
  end

  def index
    @vinyls = Vinyl.all
  end

end
