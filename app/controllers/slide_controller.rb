class SlideController < ApplicationController
  def create
    @slide = Slide.create( slide_params )
  end

  def show
  end

  def index
    @slides = Slide.all
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def slide_params
    params.permit(:graphic)
  end
end
