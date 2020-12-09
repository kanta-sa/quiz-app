class En::RankingsController < ApplicationController
  def index
    @level = Level.all
  end
end
