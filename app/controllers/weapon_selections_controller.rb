class WeaponSelectionsController < ApplicationController
  def new
    @weapon_selection = WeaponSelection.new
  end

  def create
    @weapon_selection = WeaponSelection.new(params[:weapon])

    if @weapon_selection.save
      redirect_to weapon_selections_path
    else
      render :new, status: :unprocessable_entity
    end

  end

end