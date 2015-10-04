class PresentationController < ApplicationController
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.create( presentation_params )
  end

  def show
  end

  def index
    @presentations = Presentation.all
  end

  private

  def presentation_params
    params.require(:presentation).permit(:title)
  end
end
