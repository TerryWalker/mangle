class DigitalImagesController < ApplicationController
  # GET /digital_images
  # GET /digital_images.json
  def index
    @digital_images = DigitalImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @digital_images }
    end
  end

  # GET /digital_images/1
  # GET /digital_images/1.json
  def show
    @digital_image = DigitalImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @digital_image }
    end
  end

  # GET /digital_images/new
  # GET /digital_images/new.json
  def new
    @digital_image = DigitalImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @digital_image }
    end
  end

  # GET /digital_images/1/edit
  def edit
    @digital_image = DigitalImage.find(params[:id])
  end

  # POST /digital_images
  # POST /digital_images.json
  def create
    @digital_image = DigitalImage.new(params[:digital_image])

    respond_to do |format|
      if @digital_image.save
        format.html { redirect_to @digital_image, notice: 'Digital image was successfully created.' }
        format.json { render json: @digital_image, status: :created, location: @digital_image }
      else
        format.html { render action: "new" }
        format.json { render json: @digital_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /digital_images/1
  # PUT /digital_images/1.json
  def update
    @digital_image = DigitalImage.find(params[:id])

    respond_to do |format|
      if @digital_image.update_attributes(params[:digital_image])
        format.html { redirect_to @digital_image, notice: 'Digital image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @digital_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_images/1
  # DELETE /digital_images/1.json
  def destroy
    @digital_image = DigitalImage.find(params[:id])
    @digital_image.destroy

    respond_to do |format|
      format.html { redirect_to digital_images_url }
      format.json { head :no_content }
    end
  end
end
