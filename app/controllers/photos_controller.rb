class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def gallery
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
  end

  def create
    @photo = Photo.new(params[:photo])

    if @photo.save
      redirect_to @photo, notice: 'Photo was successfully added.'
    else
      render action: 'new'
    end
  end

  #TODO: need to complete this action
  def update
    if @photo
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_url, notice: 'Photo was successfully deleted.'
  end

end