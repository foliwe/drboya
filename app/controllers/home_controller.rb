class HomeController < ApplicationController
  def index
  	@testimonies = Testimony.page(params[:page]).per(1)#paginate(:page => params[:page], :per_page => 1).order("created_at DESC")
  	@products= Product.all.order("created_at DESC").limit(3)
  end
end
