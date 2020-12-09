class En::WordsController < ApplicationController
  def index
    @level = Level.all
  end
end
