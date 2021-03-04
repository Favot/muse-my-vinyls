class Owner::RentingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_renting, only: [:decline, :validate]

  def index
    @incoming_rentings = Renting.includes(:vinyl).where(vinyls: { owner: current_user })
    @pending_incoming_rentings = @incoming_rentings.where(status: 'Pending')
    @accepted_incoming_rentings = @incoming_rentings.where(status: 'Accepted')
    @declined_incoming_rentings = @incoming_rentings.where(status: 'Declined')
  end

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
