class RentingsController < ApplicationController
  def create
    @renting = Renting.new(renting_params)
    @vinyl = Vinyl.find(params[:vinyl_id])
    @renting.vinyl = @vinyl
    @renting.renter = current_user

    if @renting.save
      flash[:alert] = 'Request submitted!'
      # when possible redirect to 'All requests'
      redirect_to vinyls_path
    else
      flash[:alert] = 'Something went wrong. Try again.'
      redirect_to vinyl_path(@vinyl)
    end
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date, :total_price, :vinyl_id, :renter_id, :status)
  end
end
