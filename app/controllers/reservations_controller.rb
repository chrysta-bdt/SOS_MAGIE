class ReservationsController < ApplicationController
	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
    @reservation.save

		if @reservation.save
			redirect_to reservations_path
		else
			render :new
		end
	end

	def index

	end

	private

  def reservation_params
   params.require(:reservation).permit(:return_date,:rental_date)
  end
end
