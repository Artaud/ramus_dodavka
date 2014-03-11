class FakturasController < ApplicationController
  # GET /fakturas
  # GET /fakturas.json
  def index
    @fakturas = Faktura.all

    render json: @fakturas
  end

  # GET /fakturas/1
  # GET /fakturas/1.json
  def show
    @faktura = Faktura.find(params[:id])

    render json: @faktura
  end

  # POST /fakturas
  # POST /fakturas.json
  def create
    @faktura = Faktura.new(params[:faktura])

    if @faktura.save
      render json: @faktura, status: :created, location: @faktura
    else
      render json: @faktura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fakturas/1
  # PATCH/PUT /fakturas/1.json
  def update
    @faktura = Faktura.find(params[:id])

    if @faktura.update(params[:faktura])
      head :no_content
    else
      render json: @faktura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fakturas/1
  # DELETE /fakturas/1.json
  def destroy
    @faktura = Faktura.find(params[:id])
    @faktura.destroy

    head :no_content
  end
end
