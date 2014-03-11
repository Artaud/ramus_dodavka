class VypujckasController < ApplicationController
  # GET /vypujckas
  # GET /vypujckas.json
  def index
    @vypujckas = Vypujcka.all

    render json: @vypujckas
  end

  # GET /vypujckas/1
  # GET /vypujckas/1.json
  def show
    @vypujcka = Vypujcka.find(params[:id])

    render json: @vypujcka
  end

  # POST /vypujckas
  # POST /vypujckas.json
  def create
    @vypujcka = Vypujcka.new(params[:vypujcka])

    if @vypujcka.save
      render json: @vypujcka, status: :created, location: @vypujcka
    else
      render json: @vypujcka.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vypujckas/1
  # PATCH/PUT /vypujckas/1.json
  def update
    @vypujcka = Vypujcka.find(params[:id])

    if @vypujcka.update(params[:vypujcka])
      head :no_content
    else
      render json: @vypujcka.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vypujckas/1
  # DELETE /vypujckas/1.json
  def destroy
    @vypujcka = Vypujcka.find(params[:id])
    @vypujcka.destroy

    head :no_content
  end
end
