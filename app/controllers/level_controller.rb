class LevelController < ApplicationController
  def question
    @level = Level.find_by(id: params[:id])
    @questions = @level.questions
  end

  def ranking
    @level = Level.find_by(id: params[:id])
  end
end
