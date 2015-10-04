class SlideController < ApplicationController
  def new
    @pres_id = params[:id]
    @slide = Slide.new
  end

  def create
    @slide = Slide.create( slide_params )
  end

  def index
  end

  private

  def slide_params
    params.require(:slide).permit(:graphic, :caption)
  end
end
