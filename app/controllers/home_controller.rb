class HomeController < ApplicationController
  def index
  	@testimonies = Testimony.paginate(:page => params[:page], :per_page => 1)
  end
end
