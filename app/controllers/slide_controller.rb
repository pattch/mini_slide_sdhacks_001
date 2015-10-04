class SlideController < ApplicationController
  def new
    @pres_id = params[:id]
    @presentation = Presentation.find(@pres_id)
    @slide = Slide.new
  end

  def create
    @pres_id = params[:id]
    @slide = Slide.create( slide_params )
    @presentation = Presentation.find(@pres_id)
    @presentation.slides << @slide
    @slide
  end

  def index
    @slides = Slide.all
  end

  private

  def slide_params
    params.require(:slide).permit(:graphic, :caption)
  end
end
