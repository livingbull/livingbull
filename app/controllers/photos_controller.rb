class PhotosController < ApplicationController

  def index
    @photos = Photo.paginate page: params[:page] || 1, per_page: params[:per_page] || 20
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
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
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url, notice: 'Photo was successfully deleted.'
  end

  def mike_bull_images
  end

  def photo_gallery
    group = params[:photo_group]
    if group
      @photos = Photo.where(photo_group: group)
    else
      @photos = Photo.all
    end
  end


  private

  def photo_params
    params.require(:photo).permit(:title, :description, :photo, :photo_group)
  end

end