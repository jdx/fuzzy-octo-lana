class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def create
    @photo = Photo.new
    @photo.url = params[:photo][:url]
    @photo.save!
    redirect_to '/'
  end
end