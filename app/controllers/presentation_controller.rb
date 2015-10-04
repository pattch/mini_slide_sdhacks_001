class PresentationController < ApplicationController
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.create( presentation_params )
  end

  def show
    @presentation = Presentation.includes(:slides).find( params[:id] )
  end

  def index
    @presentations = Presentation.all
  end

  private

  def presentation_params
    params.require(:presentation).permit(:title)
  end
end
