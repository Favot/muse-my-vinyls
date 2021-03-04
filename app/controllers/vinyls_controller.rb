class VinylsController < ApplicationController
  def show
    @vinyl = Vinyl.find(params[:id])
    @renting = Renting.new
  end

  def index
    @vinyls = Vinyl.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @vinyls = Vinyl.where('artist ILIKE ?', "%#{@name}%")

      @title = Vinyl.where('title ILIKE ?', "%#{@name}%")
    end
  end
end
