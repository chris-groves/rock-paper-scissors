class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:name])

    if @player.save
      redirect_to players_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @player = Player.first
  end
end