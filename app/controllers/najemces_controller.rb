class NajemcesController < ApplicationController
  # GET /najemces
  # GET /najemces.json
  def index
    @najemces = Najemce.all

    render json: @najemces
  end

  # GET /najemces/1
  # GET /najemces/1.json
  def show
    @najemce = Najemce.find(params[:id])

    render json: @najemce
  end

  # POST /najemces
  # POST /najemces.json
  def create
    @najemce = Najemce.new(params[:najemce])

    if @najemce.save
      render json: @najemce, status: :created, location: @najemce
    else
      render json: @najemce.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /najemces/1
  # PATCH/PUT /najemces/1.json
  def update
    @najemce = Najemce.find(params[:id])

    if @najemce.update(params[:najemce])
      head :no_content
    else
      render json: @najemce.errors, status: :unprocessable_entity
    end
  end

  # DELETE /najemces/1
  # DELETE /najemces/1.json
  def destroy
    @najemce = Najemce.find(params[:id])
    @najemce.destroy

    head :no_content
  end
end
