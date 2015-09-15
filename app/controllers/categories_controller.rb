class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @questions = @category.questions
    @question = Question.new
    @categories = Category.where.not(id: @category.id)
  end
end
