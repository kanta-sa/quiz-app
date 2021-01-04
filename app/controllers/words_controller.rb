class WordsController < ApplicationController
  before_action :authenticate_user!

  def index
    @level = Level.all
  end
end