class AnswersController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user = current_user

    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
    @answer = current_user.reviews.find(params[:id])
  end

  def update
    @answer = current_user.answers.find(params[:id])
    @question = @answer.question
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to(@answer) }
        format.json { render json: @answer }
      end
    end
  end

  def destroy
    @answer = current_user.answers.find(params[:id])
    @question = @answer.question
      if @answer.destroy
        flash[:notice] = "Your answer was deleted!"
      else
        flash[:notice] = "Answer not deleted"
      end
      redirect_to question_path(@question)
    end

  private

  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end
