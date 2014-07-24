class ImagesController < ApplicationController
  before_action :find_collection

  def new
    @image = @collection.images.build
  end

  def create
    @image = @collection.images.build image_params
    if @image.save
      redirect_to collection_path(@collection)
    else
      render 'new'
    end
  end

  private
  def image_params
    params.require(:image).permit(:title, :description, :source_url)
  end

  def find_collection
    @collection = Collection.find_by!(id: params[:collection_id])
  end
end
