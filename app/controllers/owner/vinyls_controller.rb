module Owner
  class VinylsController < OwnerController
    before_action :authenticate_user!

    def index
      @vinyls = Vinyl.where(owner: current_user)
    end

    def new
      @vinyl = Vinyl.new
    end

    def create
      @vinyl = Vinyl.new(vinyl_params)

      @vinyl.owner = current_user
      p @vinyl
      if @vinyl.save!
        flash[:alert] = 'Your Vinyl as been had!'
        # when possible redirect to 'All requests'
        redirect_to owner_vinyls_path
      else
        flash[:alert] = 'Something went wrong. Try again.'
        redirect_to new_owner_vinyl_path(@vinyl)
      end
    end

    private

    def vinyl_params
      params.require(:vinyl).permit(:title, :artist, :price_per_day, :description, :condition, :photo)
    end
  end
end
