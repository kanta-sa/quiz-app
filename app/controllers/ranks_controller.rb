class RanksController < ApplicationController
  def create
    @rank = Rank.new(level_id: params[:rank][:level_id], user_id: params[:rank][:user_id], score: params[:rank][:score])
    if @rank.save
      redirect_to root_url
    else
      redirect_to tests_url
    end
  end

  def update
    @rank = Rank.where(level_id: params[:rank][:level_id], user_id: params[:rank][:user_id])
    if @rank.update_all(score: params[:rank][:score])
      redirect_to root_url
    else
      redirect_to tests_url
    end
  end
end
