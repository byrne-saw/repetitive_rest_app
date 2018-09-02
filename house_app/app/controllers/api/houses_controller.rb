class Api::HousesController < ApplicationController

  def index
    @houses = House.all 
    render "index.json.jbuilder"
  end

  def create
    @house = House.new(
                      address: params[:address],
                      price: params[:price]
                      )
    @house.save
    render "show.json.jbuilder"
  end

  def show
    @house = House.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @house = House.find(params[:id])
    @house.address = params[:address] || @house.address
    @house.price = params[:price] || @house.price

    @house.save
    render "show.json.jbuilder"
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    render json: {message: "record successfully deleted"}
  end

end
