class VinylsController < ApplicationController
  def show
    @vinyl = Vinyl.find(params[:id])
    @renting = Renting.new
  end

  def index
    if params[:search].present?
      # @name =
      @vinyls_searched = Vinyl.where('artist ILIKE ?', "%#{

        params[:search]['query']}%")

      @title = Vinyl.where('title ILIKE ?', "%#{

        params[:search]['query']}%")

    else
      @vinyls = Vinyl.all
    end
  end
end
