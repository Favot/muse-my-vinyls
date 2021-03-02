class VinylsController < ApplicationController

  def show
    @vinyl = Vinyl.find(params[:id])
  end

  def index
    @vinyls = Vinyl.all
  end

end
