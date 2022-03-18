class ReservationsController < ApplicationController
	def new
		@service = Service.find(params[:service_id])
		@reservation = Reservation.new
	end
	
	def create
		@service = Service.find(params[:service_id])
		@patient = current_user
		@reservation = Reservation.new(reservation_params)
		@reservation.patient = @patient
		@reservation.service = @service
		if @reservation.save
			redirect_to root_path, notice: 'Yeaaah! Votre réservation a bien été prise en compte 😊'
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
