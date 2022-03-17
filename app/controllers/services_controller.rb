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
    @love_services = Service.where(category: 'love')
    @theft_services = Service.where(category: 'theft')
    @conflict_services = Service.where(category: 'conflict')
    @money_services = Service.where(category: 'money')
  end
  
  def show
    @service = Service.find(params[:id])
  end 
  
	private

  def service_params
   params.require(:service).permit(:name, :category, :description, :price)
  end
  
end
