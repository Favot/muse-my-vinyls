class Owner::RentingsController < ApplicationController
 before_action :set_renting, only: [:decline, :validate]

  def validate
    @renting.status = "Accepted"
    @renting.save!

    redirect_to rentings_path
  end

  def decline
    @renting.status = "Declined"
    @renting.save!

    redirect_to rentings_path
  end

  private

  def set_renting
    @renting = Renting.find(params[:id])
  end
end
