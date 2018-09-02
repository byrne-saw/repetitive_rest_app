class Api::PogsController < ApplicationController
  
  def index
    @pogs = Pog.all
    render "index.json.jbuilder"
  end

  def create
    @pog = Pog.new(
                    color: params[:color],
                    size: params[:size]
                    )
    @pog.save
    render "show.json.jbuilder"
  end

  def show
    @pog = Pog.find(params[:id])
    render "show.json.jbuilder"
  end

  def update 
    @pog = Pog.find(params[:id])
    @pog.color = params[:color] || @pog.color
    @pog.size = params[:size] || @pog.size
    @pog.save
    render "show.json.jbuilder"
  end

  def destroy
    @pog = Pog.find(params[:id])
    @pog.destroy
    render json: {message: "pog is gone"}
  end

end
