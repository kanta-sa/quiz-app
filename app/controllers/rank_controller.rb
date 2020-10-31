class RankController < ApplicationController
  def index
    @level = Level.all
  end
end
