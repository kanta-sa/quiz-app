class TestController < ApplicationController
  def index
    @level = Level.all
  end
end
