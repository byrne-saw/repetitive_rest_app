class Api::MainzersController < ApplicationController

  def index
    @mainzers = Mainzer.all
    render "index.json.jbuilder"
  end

  def create
    @mainzer = Mainzer.new(
                          position: params[:position],
                          number: params[:number]
                          )
    @mainzer.save
    render 'show.json.jbuilder'
  end

  def show
     @mainzer = Mainzer.find(params[:id])
      render "show.json.jbuilder"
  end

  def update
    @mainzer = Mainzer.find(params[:id])
    @mainzer.position = params[:position] || @mainzer.position
    @mainzer.number = params[:number] || @mainzer.number
    @mainzer.save
    render "show.json.jbuilder"
  end

  def destroy
    @mainzer = Mainzer.find(params[:id])
    @mainzer.destroy 
    render json: {message: "sandro says goodbye"}    
  end

end
