class RanksController < ApplicationController
  before_action :authenticate_user!

  def create
    @rank = Rank.new(level_id: params[:rank][:level_id], user_id: params[:rank][:user_id], score: params[:rank][:score])
    if @rank.save
      if params[:rank][:type] == 'ja'
        redirect_to root_url
      else
        redirect_to en_top_url
      end
    else
      if params[:rank][:type] == 'ja'
        redirect_to tests_url
      else
        redirect_to en_tests_url
      end
    end
  end

  def update
    @rank = Rank.where(level_id: params[:rank][:level_id], user_id: params[:rank][:user_id])
    if @rank.update_all(score: params[:rank][:score])
      if params[:rank][:type] == 'ja'
        redirect_to root_url
      else
        redirect_to en_top_url
      end
    else
      if params[:rank][:type] == 'ja'
        redirect_to tests_url
      else
        redirect_to en_tests_url
      end
    end
  end
end
