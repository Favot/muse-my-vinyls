class Owner::RentingsController < ApplicationController
  def validate
    @renting = Renting.find(params[:id])
    @renting.status = "Accepted"
    @renting.save!
  end
end
