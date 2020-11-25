class TestsController < ApplicationController
  def index
    @level = Level.all
  end
end
