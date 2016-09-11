class TestimoniesController < ApplicationController

  before_action :authenticate_user! ,except:[:index]
  def index
    @testimonies = Testimony.paginate(:page => params[:page], :per_page => 8).order("created_at DESC")
  end


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

  def destroy
    @testimony = Testimony.find(params[:id])
    if @testimony.destroy
      redirect_to testimonies_path
    else
      render @testimony
    end
  end
  private
  

    # Use callbacks to share common setup or constraints between actions.
    
  def testimony_params
  	params.require(:testimony).permit(:name,:body)
  end
end
