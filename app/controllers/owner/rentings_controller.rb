class Owner::RentingsController < ApplicationController
  def validate
    @renting = Renting.find(params[:id])
    @renting.status = "Accepted"
    @renting.save!

    redirect_to rentings_path
  end

  def decline
    @renting = Renting.find(params[:id])
    @renting.status = "Declined"
    @renting.save!

    redirect_to rentings_path
  end
end
