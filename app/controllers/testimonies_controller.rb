class TestimoniesController < ApplicationController
  def new
  	@testimony = Testimony.new
  end

  def create
  	@testimony = Testimony.new(testimony_params)
  	if @testimony.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end
  private
  def testimony_params
  	params.require(:testimony).permit(:name,:body)
  end
end
