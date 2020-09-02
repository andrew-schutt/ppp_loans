class StateOrTerritoriesController < ApplicationController
  def index
    @state_or_territories = StateOrTerritory.all
  end

  def show
    @state_or_territory = StateOrTerritory.find(params[:id])
  end
end
