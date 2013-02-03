class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by_id(params[:id])
  end

  def new
  end

  def create
    picture = Picture.new
    picture.source = params[:source]
    picture.caption = params[:caption]
    picture.save

    redirect_to 'http://localhost:3000/pictures'
  end

  def edit
    @picture = Picture.find_by_id(params[:id])
  end
end
