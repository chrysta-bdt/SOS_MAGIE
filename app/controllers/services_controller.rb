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

  def indexlove
    @love_services = Service.where(category: 'love')
  end

  def indextheft
    @theft_services = Service.where(category: 'theft')
  end

  def indexconflict
    @conflict_services = Service.where(category: 'conflict')
  end

  def indexmoney
    @money_services = Service.where(category: 'money')
  end
  
	private

  def service_params
   params.require(:service).permit(:name, :category, :description, :price)
  end
  
end
