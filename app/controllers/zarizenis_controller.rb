class ZarizenisController < ApplicationController
  # GET /zarizenis
  # GET /zarizenis.json
  def index
    @zarizenis = Zarizeni.all

    render json: @zarizenis
  end

  # GET /zarizenis/1
  # GET /zarizenis/1.json
  def show
    @zarizeni = Zarizeni.find(params[:id])

    render json: @zarizeni
  end

  # POST /zarizenis
  # POST /zarizenis.json
  def create
    @zarizeni = Zarizeni.new(params[:zarizeni])

    if @zarizeni.save
      render json: @zarizeni, status: :created, location: @zarizeni
    else
      render json: @zarizeni.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zarizenis/1
  # PATCH/PUT /zarizenis/1.json
  def update
    @zarizeni = Zarizeni.find(params[:id])

    if @zarizeni.update(params[:zarizeni])
      head :no_content
    else
      render json: @zarizeni.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zarizenis/1
  # DELETE /zarizenis/1.json
  def destroy
    @zarizeni = Zarizeni.find(params[:id])
    @zarizeni.destroy

    head :no_content
  end
end
