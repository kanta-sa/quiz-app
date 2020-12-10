class En::LevelController < ApplicationController
  def question
    @level = Level.find_by(id: params[:id])
    @questions = @level.questions
    @choices = @questions.map{ |question| question.choices }
    if Rank.exists?(level_id: @level.id, user_id: current_user.id)
      @rank = Rank.find_by(level_id: @level.id, user_id: current_user.id)
    else
      @rank = Rank.new
    end
  end
end
