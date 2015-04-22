class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:query]
      @questions = Question.page(params[:page]).per(20).search(params[:query])
      flash.now[:notice] = @questions.search_message
    else
      @questions = Question.page(params[:page]).per(20).order(:name)
    end
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

    if @question.update(question_params)
      redirect_to category_path(@question.category)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      flash[:notice] = "Question deleted!"
    else
      flash[:notice] = "You must be logged in to do that!"
    end
    redirect_to category_path(@question.category)
  end

  def question_params
    params.require(:question).permit(:title, :description, :score, :audio)
  end
end
