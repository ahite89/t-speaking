class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @questions = Question.all
  end

  def show
    @answer = Answer.new
    @question = Question.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @question = Question.new
  end

  def create
    @category = Category.find(params[:category_id])
    @question = Question.new(question_params)
    @question.category = @category
    @question.user = current_user
    @question.tag_list.add(params["question"]["tag_list"])

    if @question.save
      flash[:notice] = "Question added!"
      redirect_to category_path(@question.category)
    else
      flash[:notice] = "Question not added."
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to(@question) }
        format.json { render json: @question }
      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      flash[:notice] = "Question deleted!"
    else
      flash[:notice] = "Can't delete!"
    end
    redirect_to category_path(@question.category)
  end

  def question_params
    params.require(:question).permit(:title, :description, :score, :audio, :category_id)
  end
end
