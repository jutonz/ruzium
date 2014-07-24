class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create 
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end

  private
  def collection_params
    params.require(:collection).permit(:title, :description)
  end
end
