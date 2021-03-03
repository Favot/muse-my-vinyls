module Owner
  class VinylsController < OwnerController
    before_action :authenticate_user!

    def new
      @vinyl = Vinyl.new
    end
  end
end
