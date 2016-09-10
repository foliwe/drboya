class HomeController < ApplicationController
  def index
  	@testimonies = Testimony.paginate(:page => params[:page], :per_page => 1)
  	@products= Product.all.order("created_at DESC").limit(3)
  end
end
