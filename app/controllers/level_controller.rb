class LevelController < ApplicationController
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

  def ranking
    @level = Level.find_by(id: params[:id])
    @ranks = Rank.where(level_id: @level.id).order(score: "DESC")
    @owner = @ranks.find_by(user_id: current_user.id)
    @own_rank = @ranks.index(@owner) + 1
  end
end
