class OsobasController < ApplicationController
  # GET /osobas
  # GET /osobas.json
  def index
    @osobas = Osoba.all

    render json: @osobas
  end

  # GET /osobas/1
  # GET /osobas/1.json
  def show
    @osoba = Osoba.find(params[:id])

    render json: @osoba
  end

  # POST /osobas
  # POST /osobas.json
  def create
    @osoba = Osoba.new(params[:osoba])

    if @osoba.save
      render json: @osoba, status: :created, location: @osoba
    else
      render json: @osoba.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /osobas/1
  # PATCH/PUT /osobas/1.json
  def update
    @osoba = Osoba.find(params[:id])

    if @osoba.update(params[:osoba])
      head :no_content
    else
      render json: @osoba.errors, status: :unprocessable_entity
    end
  end

  # DELETE /osobas/1
  # DELETE /osobas/1.json
  def destroy
    @osoba = Osoba.find(params[:id])
    @osoba.destroy

    head :no_content
  end
end
