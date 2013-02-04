class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find_by_id(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = Picture.new(params[:picture])
    picture.save

    redirect_to pictures_url
  end

  def edit
    @picture = Picture.find_by_id(params[:id])
  end

  def update
    picture = Picture.find_by_id(params[:id])
    picture.update_attributes(params[:picture])

    redirect_to picture_url(picture)
  end

  def destroy
    picture = Picture.find_by_id(params[:id])
    picture.destroy

    redirect_to pictures_url
  end
end
