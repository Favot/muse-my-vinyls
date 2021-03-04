class RentingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rentings = Renting.where(renter_id: current_user.id).order('created_at DESC')
    @pending_rentings = @rentings.where(status: 'Pending')
    @accepted_rentings = @rentings.where(status: 'Accepted')
    @declined_rentings = @rentings.where(status: 'Declined')
  end

  def create
    @renting = Renting.new(renting_params)
    @vinyl = Vinyl.find(params[:vinyl_id])
    @renting.vinyl = @vinyl
    @renting.renter = current_user

    if @renting.save
      flash[:alert] = 'Request submitted!'
      redirect_to rentings_path
    else
      flash[:alert] = 'Request couldn\'t be submitted. Please try again.'
      redirect_to vinyl_path(@vinyl)
    end
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date, :total_price, :vinyl_id, :renter_id, :status)
  end
end
