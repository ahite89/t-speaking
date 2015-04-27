class ScoresController < ApplicationController
  before_action :authenticate_user!

  def new
    @question = Question.find(params[:question_id])
    @score = Score.new
  end

  def create
    @question = Question.find(params[:question_id])
    @score = Score.new(score_params)
    @score.question = @question

    if @score.save
      redirect_to question_path(@score.question)
    else
      render :new
    end
  end

  def destroy
    @score = Score.find(params[:id])
    if @score.destroy
    end
    redirect_to question_path(@score.question)
  end

  private

  def score_params
    params.require(:score).permit(:first_note, :second_note)
  end
end
