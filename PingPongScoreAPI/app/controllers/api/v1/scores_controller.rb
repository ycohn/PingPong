class Api::V1::ScoresController < ApplicationController

  def index
    render json: Score.all
  end

  def show
    render json: score
  end

  def create
    render json: Score.create(score_params)
  end

  def update
    render json: score.update(score_params)
  end

  def destroy
    render json: score.destroy
  end

  private

  def score
    Score.find(params[:id])
  end

  def score_params
    params.require(:score).permit(:email, :high_score)
  end
end 