class RentingsController < ApplicationController

  def create
    @renting = Renting.new(renting_params)
    @vinyl = vinyl.find(params[:vinyl_id])
    @renting.vinyl = @vinyl

    if @renting.save
      flash[:alert] = 'Request submitted!'
      # when possible redirect to 'All requests'
      redirect_to vinyls_path
    else
      flash[:alert] = 'Something went wrong.'
      # when possible redirect to 'All requests'
      redirect_to vinyls_path
    end
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date, :status, :total_price, :renter_id, :vinyl_id)
  end
end
