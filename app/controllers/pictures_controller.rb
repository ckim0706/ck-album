class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :find_album

  def index
    @pictures = @album.pictures.all
  end

  def show
  end


  def new
    @picture = Picture.new
  end


  def edit
  end

  def create
    @picture = @album.pictures.new(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to album_pictures_path(@album), notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to album_pictures_path(@album), notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to album_pictures_path(@album), notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private   
    def set_picture
      @picture = Picture.friendly.find(params[:id])
    end

    def find_album
      @album = Album.friendly.find(params[:album_id])
    end

    def picture_params
      params.require(:picture).permit(:album_id, :user_id, :name, :description, :asset)
    end
end
