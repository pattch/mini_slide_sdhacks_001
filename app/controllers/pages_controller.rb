class PagesController < ApplicationController
  def index
    @message = "Thomas is pretty gassy."
  end

  # Not sure why this is here, also not sure how to get rid of it :/
  def show
  end
end
