class RanksController < ApplicationController
  def index
    @level = Level.all
  end
end
