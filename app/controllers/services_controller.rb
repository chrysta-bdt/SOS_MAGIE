class ServicesController < ApplicationController

	def new
		@service = Service.new
	end

	def create
		service = Service.new(params[:service])
    service.save

		if service.save
			redirect_to services
		else
			render :new
		end
  end
  
  def index
    @services = Service.all
  end
  
  def show
    @service = Service.find(params[:id])
  end 
  
	private

  def service_params
   params.require(:service).permit(:name, :category, :description, :price)
  end
  
end
