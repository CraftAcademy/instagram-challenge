class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @images = Image.new
  end

  def create
    @images = Image.create(image_params)
    redirect_to @images
  end

  def show
    @images = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:caption, :name)
  end
end

