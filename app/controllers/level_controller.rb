class LevelController < ApplicationController
  def question
    @level = Level.find_by(id: params[:id])
    @questions = @level.questions
  end
end
