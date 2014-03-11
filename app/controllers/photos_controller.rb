class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def gallery
  end

  def national_parks
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])   #todo: update with user_params
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo, notice: 'Photo was successfully added.'
    else
      render action: 'new'
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_url, notice: 'Photo was successfully deleted.'
  end


  private

  def photo_params
    params.require(:photo).permit(:title, :description, :photo)     #:photo_file_name, :photo_content_type, :photo_file_size
  end

end