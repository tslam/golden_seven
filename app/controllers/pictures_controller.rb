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

    redirect_to pictures_url
  end

  def edit
    @picture = Picture.find_by_id(params[:id])
  end

  def update
    picture = Picture.find_by_id(params[:id])
    picture.source = params[:source]
    picture.caption = params[:caption]
    picture.save

    redirect_to picture_url(picture.id)
  end

  def destroy
    picture = Picture.find_by_id(params[:id])
    picture.destroy

    redirect_to pictures_url
  end
end
