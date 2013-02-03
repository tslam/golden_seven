class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by_id(params[:id])
  end

  def new
  end
end
